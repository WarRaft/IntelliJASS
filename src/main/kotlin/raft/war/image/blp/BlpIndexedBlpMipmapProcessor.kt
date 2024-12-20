package raft.war.image.blp

import raft.war.image.blp.intellij.BlpBundle.message
import java.awt.color.ColorSpace
import java.awt.image.*
import java.io.IOException
import java.nio.ByteOrder
import java.util.function.Consumer
import javax.imageio.IIOException
import javax.imageio.ImageReadParam
import javax.imageio.ImageTypeSpecifier
import javax.imageio.ImageWriteParam
import javax.imageio.stream.ImageInputStream
import javax.imageio.stream.ImageOutputStream

/**
 * A class that is responsible for processing between mipmap data and indexed
 * color content.
 *
 *
 * During decoding if the mipmap data is of incorrect size then it is resized to
 * fit and a warning is generated. Some poor BLP implementations, such as used
 * by some versions of Warcraft III, do not read and process mipmap data safely
 * so might be able to extract more meaningful visual information from a
 * technically corrupt file.
 *
 *
 * When encoding images the first image ColorModel is used to determine the
 * color map used. Both BLPIndexColorModel and IndexColorModel are supported
 * although IndexColorModel alpha is not. The direct values of the required
 * bands are then used without further processing. Alpha band is always assumed
 * to be the second band and will be rescaled as required. Missing alpha band
 * will be substituted with opaque pixels if required. Any other bands are
 * discarded.
 *
 * @author Imperial Good
 */
class BlpIndexedBlpMipmapProcessor(alphaBits: Int) : BlpMipmapProcessor() {
    /**
     * The BLP indexed color model used to process mipmaps.
     */
    private var indexedBLPColorModel: BlpIndexColorModel? = null

    /**
     * The bandSizes to use.
     */
    private val bandSizes: IntArray

    init {
        require(BlpEncodingType.INDEXED.isAlphaBitsValid(alphaBits)) { "Unsupported alphaBits." }
        bandSizes = if (alphaBits != 0) intArrayOf(8, alphaBits)
        else intArrayOf(8)

        // dummy color model
        indexedBLPColorModel = BlpIndexColorModel(
            null,
            if (bandSizes.size > 1) bandSizes[1] else 0
        )
    }

    override fun encodeMipmap(
        img: BufferedImage?, param: ImageWriteParam?,
        handler: Consumer<String?>?
    ): ByteArray? {
        checkNotNull(img)
        val srcWR = img.raster
        val srcCM = img.colorModel
        val srcSM = srcWR.sampleModel
        val h = srcSM.height
        val w = srcSM.width

        // process ColorModel
        if (!canDecode) {
            // get a color model
            when (srcCM) {
                is BlpIndexColorModel -> {
                    indexedBLPColorModel = BlpIndexColorModel(
                        srcCM.palette,
                        if (bandSizes.size > 1) bandSizes[1] else 0
                    )
                }

                is IndexColorModel -> {
                    // basic IndexColorModel compatibility
                    val srcCMap = IntArray(srcCM.mapSize)
                    srcCM.getRGBs(srcCMap)

                    // color space conversion
                    val srcCMapCM = ColorModel.getRGBdefault()
                    val destCMapCM =
                        BlpIndexColorModel.createPaletteColorModel(ColorSpace.getInstance(ColorSpace.CS_LINEAR_RGB))
                    val destCMap = IntArray(srcCMap.size)
                    val components = IntArray(
                        srcCMapCM
                            .numColorComponents
                    )
                    var i = 0
                    while (i < srcCMap.size) {
                        destCMap[i] = destCMapCM.getDataElement(
                            srcCMapCM.getComponents(srcCMap[i], components, 0),
                            0
                        )
                        i += 1
                    }

                    indexedBLPColorModel = BlpIndexColorModel(
                        destCMap,
                        if (bandSizes.size > 1) bandSizes[1] else 0
                    )
                }

                else -> {
                    throw IIOException(
                        "Cannot obtain sensible color map from ColorModel."
                    )
                }
            }
            canDecode = true
        }

        // create destination
        val destSM: SampleModel = BlpPackedSampleModel(
            w, h, bandSizes,
            null
        )
        val destDB = destSM.createDataBuffer()
        val destWR = WritableRaster
            .createWritableRaster(destSM, destDB, null)

        // copy bands
        val hasAlpha = bandSizes.size > 1
        val srcHasAlpha = hasAlpha && srcSM.numBands > 1
        val rescaleAlpha = (srcHasAlpha
                && srcSM.getSampleSize(1) != bandSizes[1])
        val alphaMask = if (hasAlpha) (1 shl bandSizes[1]) - 1 else 0
        var y = 0
        while (y < h) {
            var x = 0
            while (x < w) {
                destWR.setSample(x, y, 0, srcWR.getSample(x, y, 0))
                if (hasAlpha) {
                    if (srcHasAlpha) {
                        var alphaSample = srcWR.getSample(x, y, 1)
                        if (rescaleAlpha) alphaSample = (alphaMask.toFloat() * alphaSample.toFloat()
                                / (srcSM.getSampleSize(1) - 1).toFloat()).toInt()
                        destWR.setSample(x, y, 1, alphaSample)
                    } else destWR.setSample(x, y, 1, alphaMask)
                }
                x += 1
            }
            y += 1
        }

        // return destination results
        return (srcWR.dataBuffer as DataBufferByte).data
    }

    override fun decodeMipmap(
        mmData: ByteArray?, param: ImageReadParam?,
        width: Int, height: Int, handler: Consumer<String?>?
    ): BufferedImage {
        // create sample model
        var mData = mmData
        val sm = BlpPackedSampleModel(
            width, height,
            bandSizes, null
        )

        // validate chunk size
        val expected = sm.bufferSize
        checkNotNull(mData)
        if (mData.size != expected) {
            handler!!.accept(message("BadBuffer", mData.size, expected))
            mData = mData.copyOf(expected)
        }

        // produce image WritableRaster
        val db: DataBuffer = DataBufferByte(mData, mData.size)
        val raster = Raster.createWritableRaster(sm, db, null)

        // produce buffered image
        return BufferedImage(
            indexedBLPColorModel, raster,
            false, null
        )
    }

    override fun getSupportedImageTypes(
        width: Int,
        height: Int
    ): Iterator<ImageTypeSpecifier?> {
        return listOf(
            ImageTypeSpecifier(
                indexedBLPColorModel,
                BlpPackedSampleModel(width, height, bandSizes, null)
            )
        )
            .iterator()
    }

    override fun readObject(
        src: ImageInputStream?,
        warning: Consumer<String?>?
    ) {
        checkNotNull(src)
        src.byteOrder = ByteOrder.LITTLE_ENDIAN
        val palette = IntArray(BlpIndexColorModel.MAX_PALETTE_LENGTH)
        src.readFully(palette, 0, palette.size)

        indexedBLPColorModel = BlpIndexColorModel(
            palette,
            if (bandSizes.size > 1) bandSizes[1] else 0
        )
        canDecode = true
    }

    override fun writeObject(dst: ImageOutputStream?) {
        checkNotNull(dst)
        dst.byteOrder = ByteOrder.LITTLE_ENDIAN
        val palette = indexedBLPColorModel!!.palette
        dst.writeInts(palette, 0, palette.size)
    }
}
