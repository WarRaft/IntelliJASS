package raft.war.image.blp

import raft.war.image.blp.intellij.BlpBundle
import java.awt.Rectangle
import java.awt.Transparency
import java.awt.color.ColorSpace
import java.awt.image.BufferedImage
import java.awt.image.ColorModel
import java.awt.image.ComponentColorModel
import java.awt.image.DataBuffer
import java.awt.image.WritableRaster
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.InputStream
import java.nio.ByteOrder
import java.util.Arrays
import java.util.function.Consumer
import javax.imageio.IIOException
import javax.imageio.IIOImage
import javax.imageio.ImageIO
import javax.imageio.ImageReadParam
import javax.imageio.ImageReader
import javax.imageio.ImageTypeSpecifier
import javax.imageio.ImageWriteParam
import javax.imageio.ImageWriter
import javax.imageio.event.IIOReadWarningListener
import javax.imageio.event.IIOWriteWarningListener
import javax.imageio.stream.ImageInputStream
import javax.imageio.stream.ImageOutputStream
import javax.imageio.stream.MemoryCacheImageInputStream
import javax.imageio.stream.MemoryCacheImageOutputStream
import kotlin.math.min

/**
 * Mipmap processor for JPEG content BLP files.
 *
 *
 * In the case that a decoded JPEG image is not the correct size, it is resized
 * and a warning generated. Resizing occurs by padding/cropping the right and
 * bottom edges of the image. Padding is transparent black.
 *
 *
 * Some poor BLP implementations, such as used by Warcraft III 1.27a, do not
 * read and process mipmap data safely so might be able to extract a valid JPEG
 * file from a technically corrupt file.
 *
 *
 * Both 8 and 0 bit alpha is supported. A fully opaque alpha band is encoded
 * when set to 0 bits. When decoding 0 bit alpha and not using direct read a
 * warning is generated if the alpha channel is not fully opaque. Some poor BLP
 * implementations, such as used by Warcraft III 1.27a, can still process the
 * dummy alpha band which can result in undesirable visual artifacts depending
 * on use.
 *
 *
 * The JPEG ImageReader used can be controlled by a BLPReadParam. Likewise the
 * JPEG ImageWriter used can be controlled by a BLPWriteParam. For best encoding
 * results it is recommended the JPEG ImageWriter be kept constant for all
 * mipmap levels.
 *
 * @author Imperial Good
 */
internal class BlpJPEGBlpMipmapProcessor(alphaBits: Int) : BlpMipmapProcessor() {
    /**
     * The color model that the processor will use.
     */
    private val jpegBLPColorModel: ColorModel

    /**
     * JPEG header block.
     */
    private var jpegHeader: ByteArray? = null

    /**
     * Constructs a MipmapProcessor for JPEG content.
     *
     * @param alphaBits the alpha component bits, if any.
     */
    init {
        require(BlpEncodingType.JPEG.isAlphaBitsValid(alphaBits)) { "Unsupported alphaBits." }
        val hasAlpha = alphaBits == 8
        jpegBLPColorModel = ComponentColorModel(
            ColorSpace.getInstance(ColorSpace.CS_LINEAR_RGB), hasAlpha,
            false, if (hasAlpha)
                Transparency.TRANSLUCENT
            else
                Transparency.OPAQUE, DataBuffer.TYPE_BYTE
        )
    }

    override fun mustPostProcess(): Boolean {
        return true
    }

    override fun postProcessMipmapData(
        mmDataList: List<ByteArray?>,
        handler: Consumer<String?>?
    ): List<ByteArray?>? {
        // determine maximum shared header
        val sharedHeader: ByteArray = mmDataList[0]!!.clone()
        var sharedLength = sharedHeader.size
        val mmDataNum = mmDataList.size
        run {
            var i = 1
            while (i < mmDataNum) {
                val mmData = mmDataList[i]
                var shared = 0
                while (shared < sharedLength) {
                    if (mmData?.get(shared) != sharedHeader[shared]) {
                        sharedLength = shared
                        break
                    }
                    shared += 1
                }
                i += 1
            }
        }

        // process shared header length
        sharedLength = min(sharedLength.toDouble(), MAX_SHARED_HEADER_LENGTH.toDouble()).toInt()
        if (sharedLength < 64) {
            handler?.accept(BlpBundle.message("JPEGSmallShared", sharedLength))
        }

        // produce shared header
        jpegHeader = sharedHeader.copyOf(sharedLength)
        canDecode = true

        // process mipmap data
        if (sharedLength == 0) return mmDataList
        val mmDataListOut: MutableList<ByteArray> = ArrayList<ByteArray>(mmDataNum)
        var i = 0
        while (i < mmDataNum) {
            val mmData = mmDataList[i]
            mmDataListOut.add(
                Arrays.copyOfRange(
                    mmData, sharedLength,
                    mmData!!.size
                )
            )
            i += 1
        }

        return mmDataListOut
    }

    override fun encodeMipmap(
        img: BufferedImage?,
        param: ImageWriteParam?,
        handler: Consumer<String?>?
    ): ByteArray? {
        // resolve a JPEG ImageWriter
        var jpegWriter: ImageWriter? = null
        if (param is BlpWriteParam
            && param.jPEGSpi != null
        ) {
            // use explicit JPEG reader
            jpegWriter = param.jPEGSpi!!
                .createWriterInstance()
        } else {
            // find a JPEG reader
            val jpegWriters = ImageIO
                .getImageWritersByFormatName("jpeg")
            while (jpegWriters.hasNext()) {
                val writer = jpegWriters.next()
                if (writer.canWriteRasters()) {
                    jpegWriter = writer
                    break
                }
            }
        }
        // validate JPEG writer
        if (jpegWriter == null) throw IIOException("No suitable JPEG ImageWriter installed.")
        else if (!jpegWriter.canWriteRasters()) {
            throw IIOException(
                String.format(
                    "JPEG ImageWriter cannot write raster: vendor = %s.",
                    jpegWriter.getOriginatingProvider().getVendorName()
                )
            )
        }

        // prepare raster
        val srcWR = img!!.raster
        val srcSM = srcWR.getSampleModel()
        val h = srcSM.getHeight()
        val w = srcSM.getWidth()
        val destWR = WritableRaster.createBandedRaster(
            DataBuffer.TYPE_BYTE, w, h, JPEG_BAND_ARRAY.size, null
        )
        val srcBandN = srcSM.sampleSize.size
        if (srcBandN == JPEG_BAND_ARRAY.size) {
            destWR.setRect(srcWR)
        } else {
            val bandNum = min(JPEG_BAND_ARRAY.size.toDouble(), srcBandN.toDouble()).toInt()
            val opaque = !jpegBLPColorModel.hasAlpha()
                    || bandNum < JPEG_BAND_ARRAY.size
            var y = 0
            while (y < h) {
                var x = 0
                while (x < w) {
                    var b = 0
                    while (b < bandNum) {
                        destWR.setSample(x, y, b, srcWR.getSample(x, y, b))
                        b += 1
                    }
                    if (opaque) destWR.setSample(x, y, 3, 255)
                    x += 1
                }
                y += 1
            }
        }

        // prepare buffered JPEG file
        val bos = ByteArrayOutputStream(100 shl 10)
        val ios: ImageOutputStream = MemoryCacheImageOutputStream(bos)
        jpegWriter.setOutput(ios)

        // write JPEG file
        val jpegParam = jpegWriter.defaultWriteParam
        jpegParam.setSourceBands(JPEG_BAND_ARRAY)
        jpegParam.setCompressionMode(ImageWriteParam.MODE_EXPLICIT)
        val compressionTypes = jpegParam.getCompressionTypes()
        if (compressionTypes != null && compressionTypes.size > 0) {
            jpegParam.setCompressionType(compressionTypes[0])
        }
        if (param != null && param.canWriteCompressed()
            && param.getCompressionMode() == ImageWriteParam.MODE_EXPLICIT
        ) {
            jpegParam.setCompressionQuality(param.getCompressionQuality())
        } else {
            jpegParam.setCompressionQuality(BlpWriteParam.DEFAULT_QUALITY)
        }
        jpegWriter.addIIOWriteWarningListener(object : IIOWriteWarningListener {
            override fun warningOccurred(
                source: ImageWriter?, imageIndex: Int,
                warning: String
            ) {
                handler!!.accept(BlpBundle.message("JPEGWarning", warning))
            }
        })
        jpegWriter.write(null, IIOImage(destWR, null, null), jpegParam)

        // cleanup
        jpegWriter.dispose()
        ios.close()
        bos.close()

        return bos.toByteArray()
    }

    override fun decodeMipmap(
        mmData: ByteArray?,
        param: ImageReadParam?,
        width: Int,
        height: Int,
        handler: Consumer<String?>?
    ): BufferedImage? {
        val directRead = param == null
                || (param is BlpReadParam && param
            .isDirectRead)

        // resolve a JPEG ImageReader
        var jpegReader: ImageReader? = null
        if (param is BlpReadParam
            && param.jPEGSpi != null
        ) {
            // use explicit JPEG reader
            jpegReader = param.jPEGSpi!!
                .createReaderInstance()
        } else {
            // find a JPEG reader
            val jpegReaders = ImageIO
                .getImageReadersByFormatName("jpeg")
            while (jpegReaders.hasNext()) {
                val reader = jpegReaders.next()
                if (reader.canReadRaster()) {
                    jpegReader = reader
                    break
                }
            }
        }
        // validate JPEG reader
        if (jpegReader == null) throw IIOException("No suitable JPEG ImageReader installed.")
        else if (!jpegReader.canReadRaster()) {
            throw IIOException(
                String.format(
                    "JPEG ImageReader cannot read raster: vendor = %s.",
                    jpegReader.getOriginatingProvider().getVendorName()
                )
            )
        }

        // create a buffered JPEG file in memory
        val jpegBuffer = jpegHeader!!.copyOf(
            jpegHeader!!.size
                    + mmData!!.size
        )
        System.arraycopy(
            mmData, 0, jpegBuffer, jpegHeader!!.size,
            mmData.size
        )

        // input buffered JPEG file
        val bis: InputStream = ByteArrayInputStream(jpegBuffer)
        val iis: ImageInputStream = MemoryCacheImageInputStream(bis)
        jpegReader.setInput(iis, true, true)

        // read source raster
        jpegReader.addIIOReadWarningListener(object : IIOReadWarningListener {
            override fun warningOccurred(source: ImageReader?, warning: String) {
                handler!!.accept(BlpBundle.message("JPEGWarning", warning))
            }
        })
        val jpegParam = jpegReader.defaultReadParam
        jpegParam.setSourceBands(JPEG_BAND_ARRAY)
        if (directRead) {
            // optimizations to improve direct read mode performance
            jpegParam.setSourceRegion(Rectangle(width, height))
        }
        var srcRaster = jpegReader.readRaster(0, jpegParam)

        // cleanup
        iis.close()
        jpegReader.dispose()

        // direct read shortcut
        if (directRead && srcRaster is WritableRaster
            && srcRaster.getWidth() == width && srcRaster.getHeight() == height
        ) {
            // enforce alpha band to match color model

            if (!jpegBLPColorModel.hasAlpha()) srcRaster = srcRaster.createWritableChild(
                0, 0,
                srcRaster.getWidth(), srcRaster.getHeight(), 0, 0,
                intArrayOf(0, 1, 2)
            )

            return BufferedImage(jpegBLPColorModel, srcRaster, false, null)
        }

        // alpha warning check
        if (!jpegBLPColorModel.hasAlpha()) {
            val alphaSamples = srcRaster.getSamples(
                0, 0,
                srcRaster.getWidth(), srcRaster.getHeight(), 3,
                null as IntArray?
            )
            for (aSample in alphaSamples) {
                if (aSample != 255) {
                    handler!!.accept(BlpBundle.message("BadPixelAlpha"))
                    break
                }
            }
        }

        // dimension check warning
        if (srcRaster.getWidth() != width || srcRaster.getHeight() != height) handler!!.accept(
            BlpBundle.message(
                "JPEGDimensionMismatch",
                srcRaster.getWidth(), srcRaster.getHeight(), width, height
            )
        )

        // create destination image
        val destImg = BufferedImage(
            jpegBLPColorModel,
            jpegBLPColorModel.createCompatibleWritableRaster(width, height),
            false, null
        )
        val destRaster = destImg.raster

        // copy data
        destRaster.setRect(
            srcRaster.createChild(
                0,
                0,
                srcRaster.getWidth(),
                srcRaster.getHeight(),
                0,
                0,
                intArrayOf(0, 1, 2, 3).copyOf(jpegBLPColorModel.getNumComponents())
            )
        )

        return destImg
    }

    override fun getSupportedImageTypes(
        width: Int,
        height: Int
    ): MutableIterator<ImageTypeSpecifier?>? {
        return mutableListOf<ImageTypeSpecifier?>(
            ImageTypeSpecifier(
                jpegBLPColorModel, jpegBLPColorModel
                    .createCompatibleSampleModel(width, height)
            )
        )
            .iterator()
    }

    override fun readObject(src: ImageInputStream?, warning: Consumer<String?>?) {
        // read JPEG header
        checkNotNull(src)
        src.byteOrder = ByteOrder.LITTLE_ENDIAN
        val length = src.readInt()
        val jpegh = ByteArray(length)
        src.readFully(jpegh, 0, jpegh.size)

        // process length
        if (length > MAX_SHARED_HEADER_LENGTH) {
            warning!!.accept(
                BlpBundle.message(
                    "JPEGBigShared", length,
                    MAX_SHARED_HEADER_LENGTH
                )
            )
        }

        jpegHeader = jpegh
        canDecode = true
    }

    override fun writeObject(dst: ImageOutputStream?) {
        val jpegh = if (jpegHeader != null) jpegHeader else ByteArray(0)

        // write JPEG header
        checkNotNull(dst)
        dst.byteOrder = ByteOrder.LITTLE_ENDIAN
        dst.writeInt(jpegh!!.size)
        dst.write(jpegh)
    }

    companion object {
        /**
         * The maximum valid shared header length.
         *
         *
         * Shared headers beyond this size might cause massive image corruption or
         * crashes in some readers.
         */
        private const val MAX_SHARED_HEADER_LENGTH = 0x270

        /**
         * BLP JPEG content band mapping array.
         */
        private val JPEG_BAND_ARRAY = intArrayOf(2, 1, 0, 3)
    }
}
