package raft.war.image.blp

import com.intellij.util.ui.UIUtil
import raft.war.image.blp.intellij.BlpBundle
import raft.war.image.blp.processor.BlpIndexedBlpMipmapProcessor
import raft.war.image.blp.processor.BlpJPEGBlpMipmapProcessor
import raft.war.image.blp.processor.BlpMipmapProcessor
import java.awt.Color
import java.awt.Rectangle
import java.awt.RenderingHints
import java.awt.image.BufferedImage
import java.io.File
import java.io.IOException
import java.nio.file.Path
import java.util.Locale
import java.util.function.Consumer
import javax.imageio.IIOException
import javax.imageio.ImageReadParam
import javax.imageio.ImageReader
import javax.imageio.ImageTypeSpecifier
import javax.imageio.metadata.IIOMetadata
import javax.imageio.spi.ImageReaderSpi
import javax.imageio.stream.FileImageInputStream
import javax.imageio.stream.ImageInputStream

class BlpReader(originatingProvider: ImageReaderSpi?) : ImageReader(originatingProvider) {
    private var streamMeta: BlpStreamMetadata? = null
    private var intSrc: ImageInputStream? = null

    private abstract class MipmapReader {
        abstract fun getMipmapDataChunk(mipmap: Int): ByteArray?
        open fun flushTo(mipmap: Int) {}
    }

    private var mipmapReader: MipmapReader? = null
    private lateinit var blpMipmapProcessor: BlpMipmapProcessor

    private fun loadHeader() {
        if (streamMeta != null) return

        checkNotNull(input) { "no input source has been set" }

        var path: Path? = null
        when (input) {
            is Path -> {
                path = input as Path
            }

            is File -> {
                path = (input as File).toPath()
            }
        }

        val src: ImageInputStream?
        if (input is ImageInputStream) {
            src = input as ImageInputStream
        } else if (path != null) {
            intSrc = FileImageInputStream(path.toFile())
            src = intSrc
        } else
            throw IllegalStateException("bad input state")

        src!!.seek(0)

        val streamMeta = BlpStreamMetadata()
        streamMeta.setWarningHandler(Consumer { msg: String? -> this.processWarningOccurred(msg!!) })
        streamMeta.readObject(src)

        val mipmapReader: MipmapReader
        if (streamMeta.getVersion() > 0) {
            val imm = BlpInternalMipmapManager()
            imm.readObject(src)
            val thisref = this

            mipmapReader = object : MipmapReader() {
                override fun getMipmapDataChunk(mipmap: Int): ByteArray? {
                    return imm.getMipmapDataChunk(
                        src, mipmap,
                        Consumer { msg: String? -> thisref.processWarningOccurred(msg!!) })
                }

                override fun flushTo(mipmap: Int) {
                    imm.flushToMipmap(src, mipmap)
                }
            }
        } else if (path != null) {
            val emm = BlpExternalMipmapManager(path)
            mipmapReader = object : MipmapReader() {
                override fun getMipmapDataChunk(mipmap: Int): ByteArray? {
                    return emm.getMipmapDataChunk(mipmap)
                }
            }
        } else {
            throw IIOException(
                "BLP0 image can only be loaded from Path or File input."
            )
        }

        blpMipmapProcessor = if (streamMeta.encodingType == BlpEncodingType.JPEG) {
            BlpJPEGBlpMipmapProcessor(streamMeta.alphaBits.toInt())
        } else if (streamMeta.encodingType == BlpEncodingType.INDEXED) {
            BlpIndexedBlpMipmapProcessor(
                streamMeta.alphaBits.toInt()
            )
        } else {
            throw IIOException("Unsupported content type.")
        }
        blpMipmapProcessor.readObject(src, Consumer { msg: String? -> this.processWarningOccurred(msg!!) })

        if (seekForwardOnly) mipmapReader.flushTo(0)

        this.streamMeta = streamMeta
        this.mipmapReader = mipmapReader
    }

    private fun checkImageIndex(imageIndex: Int) {
        if (streamMeta!!.mipmapCount <= imageIndex) throw IndexOutOfBoundsException(
            String.format(
                "Mipmap level does not exist: %d.", imageIndex
            )
        )

        if (imageIndex < minIndex) throw IndexOutOfBoundsException(
            String.format(
                "Violation of seekForwardOnly: at %d wanting %d.",
                minIndex, imageIndex
            )
        )
    }

    override fun setInput(
        input: Any?,
        seekForwardOnly: Boolean,
        ignoreMetadata: Boolean
    ) {
        super.setInput(input, seekForwardOnly, ignoreMetadata)

        if (intSrc != null) {
            try {
                intSrc!!.close()
            } catch (e: IOException) {
                processWarningOccurred(
                    BlpBundle.message("ISCloseFail", e.message!!)
                )
            }
            intSrc = null
        }

        streamMeta = null
        mipmapReader = null
    }

    override fun processWarningOccurred(msg: String) {
        if (warningListeners == null) return
        else requireNotNull(msg) { "msg is null." }
        val numListeners = warningListeners.size
        for (i in 0..<numListeners) {
            val listener = warningListeners[i]
            var locale = warningLocales[i]
            if (locale == null) {
                locale = Locale.getDefault()
            }
            listener.warningOccurred(this, msg)
        }
    }

    override fun getHeight(imageIndex: Int): Int {
        loadHeader()
        checkImageIndex(imageIndex)
        return streamMeta!!.getHeight(imageIndex)
    }

    override fun getImageMetadata(imageIndex: Int): IIOMetadata? {
        checkImageIndex(imageIndex)
        return null
    }

    override fun getImageTypes(imageIndex: Int): Iterator<ImageTypeSpecifier?>? {
        loadHeader()
        checkImageIndex(imageIndex)

        return blpMipmapProcessor.getSupportedImageTypes(
            streamMeta!!.getWidth(imageIndex),
            streamMeta!!.getHeight(imageIndex)
        )
    }

    override fun getNumImages(allowSearch: Boolean): Int {
        loadHeader()
        return streamMeta!!.mipmapCount
    }

    override fun getStreamMetadata(): IIOMetadata? {
        loadHeader()
        return streamMeta
    }

    override fun getWidth(imageIndex: Int): Int {
        loadHeader()
        checkImageIndex(imageIndex)
        return streamMeta!!.getWidth(imageIndex)
    }

    override fun read(imageIndex: Int, param: ImageReadParam?): BufferedImage? {
        loadHeader()
        checkImageIndex(imageIndex)

        if (seekForwardOnly && minIndex < imageIndex) {
            minIndex = imageIndex
            mipmapReader!!.flushTo(minIndex)
        }

        if (!blpMipmapProcessor.canDecode()) throw IIOException("Mipmap processor cannot decode.")

        processImageStarted(imageIndex)

        val mmData = mipmapReader!!.getMipmapDataChunk(imageIndex)

        val width = streamMeta!!.getWidth(imageIndex)
        val height = streamMeta!!.getHeight(imageIndex)
        val srcImg = blpMipmapProcessor.decodeMipmap(
            mmData, param,
            width, height, Consumer { msg: String? -> this.processWarningOccurred(msg!!) })
        val destImg: BufferedImage?

        if (param == null
            || (param is BlpReadParam && param
                .isDirectRead)
        ) destImg = srcImg
        else {
            destImg = getDestination(
                param, getImageTypes(imageIndex), width,
                height
            )

            checkReadParamBandSettings(
                param, srcImg!!.sampleModel
                    .getNumBands(), destImg.sampleModel.getNumBands()
            )

            val srcRegion = Rectangle()
            val destRegion = Rectangle()
            computeRegions(param, width, height, destImg, srcRegion, destRegion)

            val srcBands = param.getSourceBands()
            val destBands = param.getDestinationBands()
            val ssX = param.getSourceXSubsampling()
            val ssY = param.getSourceYSubsampling()

            val srcRaster = srcImg.raster.createWritableChild(
                srcRegion.x, srcRegion.y, srcRegion.width,
                srcRegion.height, 0, 0, srcBands
            )
            val destRaster = destImg.raster
                .createWritableChild(
                    destRegion.x, destRegion.y,
                    destRegion.width, destRegion.height, 0, 0,
                    destBands
                )

            // copy pixels
            var dataElements: Any? = null
            var y = 0
            while (y < destRegion.height) {
                var x = 0
                while (x < destRegion.width) {
                    val srcXOff = ssX * x
                    val srcYOff = ssY * y
                    dataElements = srcRaster.getDataElements(
                        srcXOff, srcYOff,
                        null
                    )
                    destRaster.setDataElements(x, y, dataElements)
                    x += 1
                }
                y += 1
            }
        }

        processImageComplete()

        //return createTriangleImage(width, height)
        return destImg
    }

    fun createTriangleImage(width: Int, height: Int): BufferedImage {
        val image = UIUtil.createImage(null, width, height, BufferedImage.TYPE_INT_ARGB)
        val g2d = image.createGraphics()
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON)
        g2d.color = Color.GREEN
        val xPoints = intArrayOf(width / 2, width / 4, 3 * width / 4)
        val yPoints = intArrayOf(height / 4, 3 * height / 4, 3 * height / 4)
        g2d.fillPolygon(xPoints, yPoints, 3)
        g2d.dispose()
        return image
    }

    override fun dispose() {
        setInput(null)
    }

    override fun getDefaultReadParam(): ImageReadParam {
        return BlpReadParam()
    }
}
