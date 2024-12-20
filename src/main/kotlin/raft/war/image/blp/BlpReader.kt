package raft.war.image.blp

import raft.war.image.blp.intellij.BlpBundle
import java.awt.Rectangle
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
    /**
     * BLP stream metadata object. Represents the contents of the BLP file
     * header and is used to decode all mipmap levels.
     */
    private var streamMeta: BlpStreamMetadata? = null

    /**
     * Internally managed ImageInputStream.
     */
    private var intSrc: ImageInputStream? = null

    /**
     * Mipmap manager adapter class. Turns varying manager interfaces into a
     * standard reader interface.
     */
    private abstract class MipmapReader {
        abstract fun getMipmapDataChunk(mipmap: Int): ByteArray?

        open fun flushTo(mipmap: Int) {
        }
    }

    /**
     * Mipmap reader to get mipmap data chunks from.
     */
    private var mipmapReader: MipmapReader? = null

    /**
     * Mipmap processor for content.
     */
    private var blpMipmapProcessor: BlpMipmapProcessor? = null

    /**
     * Loads the BLP header from an input source. The header is only loaded once
     * with the results cached for performance.
     *
     */
    private fun loadHeader() {
        if (streamMeta != null) return

        checkNotNull(input) { "no input source has been set" }

        var path: Path? = null
        if (input is Path) {
            path = input as Path
        } else if (input is File) {
            path = (input as File).toPath()
        }

        val src: ImageInputStream?
        if (input is ImageInputStream) {
            // ImageInputStream provided
            src = input as ImageInputStream
        } else if (path != null) {
            // create internally managed ImageInputStream
            intSrc = FileImageInputStream(path.toFile())

            // validate Path
            src = intSrc
        } else  // invalid input has been assigned
            throw IllegalStateException("bad input state")

        // start from beginning of stream
        src!!.seek(0)

        val streamMeta = BlpStreamMetadata()
        streamMeta.setWarningHandler(Consumer { msg: String? -> this.processWarningOccurred(msg!!) })
        streamMeta.readObject(src)

        // read mipmap location data
        val mipmapReader: MipmapReader?
        if (streamMeta.getVersion() > 0) {
            // mipmap chunks within same file
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
            // file must have ".blp" extension
            val emm = BlpExternalMipmapManager(path)

            mipmapReader = object : MipmapReader() {
                override fun getMipmapDataChunk(mipmap: Int): ByteArray? {
                    return emm.getMipmapDataChunk(mipmap)
                }
            }
        } else {
            // no path to locate mipmap chunk files
            throw IIOException(
                "BLP0 image can only be loaded from Path or File input."
            )
        }

        // read content header
        if (streamMeta.encodingType == BlpEncodingType.JPEG) {
            blpMipmapProcessor = BlpJPEGBlpMipmapProcessor(streamMeta.alphaBits.toInt())
        } else if (streamMeta.encodingType == BlpEncodingType.INDEXED) {
            blpMipmapProcessor = BlpIndexedBlpMipmapProcessor(
                streamMeta.alphaBits.toInt()
            )
        } else {
            throw IIOException("Unsupported content type.")
        }
        blpMipmapProcessor!!.readObject(src, Consumer { msg: String? -> this.processWarningOccurred(msg!!) })

        // if seeking forward only then header data can now be discarded
        if (seekForwardOnly) mipmapReader.flushTo(0)

        this.streamMeta = streamMeta
        this.mipmapReader = mipmapReader
    }

    /**
     * Checks if the given image index is valid.
     *
     * @param imageIndex the image index to check.
     */
    private fun checkImageIndex(imageIndex: Int) {
        // test if image mipmap level exists
        if (streamMeta!!.mipmapCount <= imageIndex) throw IndexOutOfBoundsException(
            String.format(
                "Mipmap level does not exist: %d.", imageIndex
            )
        )

        // test for seekForwardOnly functionality
        if (imageIndex < minIndex) throw IndexOutOfBoundsException(
            String.format(
                "Violation of seekForwardOnly: at %d wanting %d.",
                minIndex, imageIndex
            )
        )
    }

    override fun setInput(
        input: Any?, seekForwardOnly: Boolean,
        ignoreMetadata: Boolean
    ) {
        // parent performs type checks and generates exceptions
        super.setInput(input, seekForwardOnly, ignoreMetadata)

        // close internal ImageInputStream
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

    /**
     * Sends all attached warning listeners a warning message. The messages will
     * be localized for each warning listener.
     *
     * @param msg the warning message to send to all warning listeners.
     */
    override fun processWarningOccurred(msg: String) {
        if (warningListeners == null) return
        else requireNotNull(msg) { "msg is null." }
        val numListeners = warningListeners.size
        for (i in 0..<numListeners) {
            val listener = warningListeners.get(i)
            var locale = warningLocales.get(i)
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

        return blpMipmapProcessor!!.getSupportedImageTypes(
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

        // seek forward functionality
        if (seekForwardOnly && minIndex < imageIndex) {
            minIndex = imageIndex
            mipmapReader!!.flushTo(minIndex)
        }

        if (!blpMipmapProcessor!!.canDecode()) throw IIOException("Mipmap processor cannot decode.")

        processImageStarted(imageIndex)

        // get mipmap image data
        val mmData = mipmapReader!!.getMipmapDataChunk(imageIndex)

        // unpack mipmap image data into a mipmap image
        val width = streamMeta!!.getWidth(imageIndex)
        val height = streamMeta!!.getHeight(imageIndex)
        val srcImg = blpMipmapProcessor!!.decodeMipmap(
            mmData, param,
            width, height, Consumer { msg: String? -> this.processWarningOccurred(msg!!) })
        // imageIndex);
        val destImg: BufferedImage?

        // return src image if direct read mode is specified or no
        // ImageReadParam is present
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
                param, srcImg!!.getSampleModel()
                    .getNumBands(), destImg.getSampleModel().getNumBands()
            )

            val srcRegion = Rectangle()
            val destRegion = Rectangle()
            computeRegions(param, width, height, destImg, srcRegion, destRegion)

            // extract param settings
            val srcBands = param.getSourceBands()
            val destBands = param.getDestinationBands()
            val ssX = param.getSourceXSubsampling()
            val ssY = param.getSourceYSubsampling()

            val srcRaster = srcImg.getRaster().createWritableChild(
                srcRegion.x, srcRegion.y, srcRegion.width,
                srcRegion.height, 0, 0, srcBands
            )
            val destRaster = destImg.getRaster()
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
        return destImg
    }

    override fun dispose() {
        setInput(null)
    }

    override fun getDefaultReadParam(): ImageReadParam {
        return BlpReadParam()
    }
}
