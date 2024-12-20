package raft.war.image.blp

import raft.war.image.blp.intellij.BlpBundle
import java.awt.Image
import java.awt.Point
import java.awt.Rectangle
import java.awt.RenderingHints
import java.awt.image.BufferedImage
import java.awt.image.IndexColorModel
import java.io.File
import java.io.IOException
import java.nio.file.Path
import java.util.function.Consumer
import javax.imageio.IIOException
import javax.imageio.IIOImage
import javax.imageio.ImageTypeSpecifier
import javax.imageio.ImageWriteParam
import javax.imageio.ImageWriter
import javax.imageio.metadata.IIOMetadata
import javax.imageio.spi.ImageWriterSpi
import javax.imageio.stream.FileImageOutputStream
import javax.imageio.stream.ImageOutputStream
import kotlin.math.max
import kotlin.math.min

class BlpWriter(originatingProvider: ImageWriterSpi?) : ImageWriter(originatingProvider) {
    private var imageIndex = 0
    private var streamMetadata: BlpStreamMetadata? = null

    private abstract class MipmapWriter {
        open fun writeMipmapManager(ios: ImageOutputStream?) {
        }

        open fun startMipmapSequence(ios: ImageOutputStream?) {
        }

        abstract fun setMipmapDataChunk(mipmap: Int, mmData: ByteArray?)
    }

    private var mipmapWriter: MipmapWriter? = null
    private var blpMipmapProcessor: BlpMipmapProcessor? = null
    private var iosOutput: ImageOutputStream? = null
    private var internalOutput = false
    private var badOutput = false
    private var mmDataList: MutableList<ByteArray?>? = null
    private var canWriteMipmaps = false

    override fun getDefaultStreamMetadata(param: ImageWriteParam?): IIOMetadata {
        val smd = BlpStreamMetadata()
        if (param is BlpWriteParam) {
            smd.setMipmaps(param.isAutoMipmap)
            val its = param.getDestinationType()
            if (its != null) {
                val cm = its.getColorModel()
                if (cm is BlpIndexColorModel) {
                    smd.setEncoding(
                        BlpEncodingType.INDEXED, cm
                            .getComponentSize(cm.getNumColorComponents()).toByte()
                    )
                } else if (cm is IndexColorModel) {
                    smd.setEncoding(BlpEncodingType.INDEXED, 0.toByte())
                } else {
                    smd.setEncoding(
                        BlpEncodingType.JPEG,
                        (if (cm.hasAlpha()) 8 else 0).toByte()
                    )
                }
            }
        }
        return smd
    }

    override fun getDefaultImageMetadata(
        imageType: ImageTypeSpecifier?,
        param: ImageWriteParam?
    ): IIOMetadata? {
        return null
    }

    override fun convertStreamMetadata(
        inData: IIOMetadata?,
        param: ImageWriteParam?
    ): IIOMetadata {
        return getDefaultStreamMetadata(param)
    }

    override fun convertImageMetadata(
        inData: IIOMetadata?,
        imageType: ImageTypeSpecifier?, param: ImageWriteParam?
    ): IIOMetadata? {
        return null
    }

    override fun getDefaultWriteParam(): ImageWriteParam {
        return BlpWriteParam()
    }

    /**
     * Sends all attached warning listeners a warning message. The messages will
     * be localized for each warning listener.
     *
     * @param msg   the warning message to send to all warning listeners.
     * @param level the mipmap level the warning occured for.
     */
    private fun processWarningOccurred(msg: String, level: Int) {
        if (warningListeners == null) return
        else requireNotNull(msg) { "msg is null." }
        for (listener in warningListeners) {
            listener.warningOccurred(this, level, msg)
        }
    }

    override fun write(
        streamMetadata: IIOMetadata?, image: IIOImage,
        param: ImageWriteParam?
    ) {
        // validate paramters
        var streamMetadata = streamMetadata
        var param = param
        if (image.hasRaster()) throw UnsupportedOperationException("Cannot encode raster.")
        else checkNotNull(output != null) { "No output." }
        if (badOutput) throw IIOException("Cannot write to stream.")

        // process output
        if (iosOutput == null) {
            // identify output type
            if (output is File) {
                iosOutput = FileImageOutputStream(output as File)
                internalOutput = true
            } else if (output is Path) {
                iosOutput = FileImageOutputStream((output as Path).toFile())
                internalOutput = true
            } else if (output is ImageOutputStream) {
                iosOutput = output as ImageOutputStream
            } else {
                throw IllegalStateException("Unsupported output.")
            }

            // check stream is empty
            if (iosOutput!!.length() > 0) {
                badOutput = true
                throw IIOException("Stream not empty.")
            }
        }

        val im = image.renderedImage

        // Prepare default param if required.
        if (param == null) {
            param = defaultWriteParam
            param.setDestinationType(ImageTypeSpecifier(im))
        }

        // get image processing values
        var sourceRegion = Rectangle(
            0, 0, im.width,
            im.height
        )
        var sourceXSubsampling = 1
        var sourceYSubsampling = 1
        var sourceBands: IntArray? = null
        var destOff = Point()
        val sourceRegionParam = param.getSourceRegion()
        if (sourceRegionParam != null) sourceRegion = sourceRegion.intersection(
            param
                .getSourceRegion()
        )
        destOff = param.getDestinationOffset()
        sourceXSubsampling = param.getSourceXSubsampling()
        sourceYSubsampling = param.getSourceYSubsampling()
        sourceBands = param.getSourceBands()
        val subsampleXOffset = param.getSubsamplingXOffset()
        val subsampleYOffset = param.getSubsamplingYOffset()
        sourceRegion.x += subsampleXOffset
        sourceRegion.y += subsampleYOffset
        sourceRegion.width -= subsampleXOffset
        sourceRegion.height -= subsampleYOffset

        // create source Raster
        var width = sourceRegion.width
        var height = sourceRegion.height
        var imRas = im.getData(sourceRegion)
        val numBands = imRas.getNumBands()

        // validate source bands
        if (sourceBands != null) {
            for (bandOff in sourceBands) {
                require(!(bandOff < 0 || numBands <= bandOff)) { "Bad source bands." }
            }
        }

        // translate raster and apply bands
        imRas = imRas.createChild(
            sourceRegion.x, sourceRegion.y, width,
            height, 0, 0, sourceBands
        )

        // apply subsampling to width and height
        width = (width + sourceXSubsampling - 1) / sourceXSubsampling
        height = (height + sourceYSubsampling - 1) / sourceYSubsampling

        // create and fill destination WritableRaster
        val destWR = imRas.createCompatibleWritableRaster(
            destOff.x,
            destOff.y, width + destOff.x, height + destOff.y
        )
        var transferCache: Any? = null
        var y = 0
        while (y < height) {
            var x = 0
            while (x < width) {
                transferCache = imRas.getDataElements(
                    x * sourceXSubsampling, y
                            * sourceYSubsampling, transferCache
                )
                destWR.setDataElements(x, y, transferCache)
                x += 1
            }
            y += 1
        }

        // create destination BufferedImage
        val srcCM = im.colorModel
        var destImg = BufferedImage(
            srcCM, destWR,
            srcCM.isAlphaPremultiplied(), null
        )
        var destW = destImg.width
        var destH = destImg.height

        // stream setup
        if (imageIndex == 0) {
            // process stream metadata
            if (streamMetadata !is BlpStreamMetadata) {
                streamMetadata = convertStreamMetadata(streamMetadata, param)
            }
            this.streamMetadata = streamMetadata as BlpStreamMetadata?

            // resolve output image dimensions
            var rescaleDest = false
            var autoScale = BlpWriteParam.ScaleOptimization.CLAMP
            if (param is BlpWriteParam) autoScale = param.scaleOptimization
            val worst = max(destW.toDouble(), destH.toDouble()).toInt()
            val maxDimension = if (this.streamMetadata!!.getVersion() < 2)
                BlpStreamMetadata.Companion.LEGACY_MAX_DIMENSION
            else
                this.streamMetadata!!.dimensionMaximum
            if (worst > maxDimension) {
                when (autoScale) {
                    BlpWriteParam.ScaleOptimization.RATIO -> {
                        destW = ((destW.toLong() * maxDimension + worst / 2) / worst).toInt()
                        destH = ((destH.toLong() * maxDimension + worst / 2) / worst).toInt()
                        rescaleDest = true
                    }

                    BlpWriteParam.ScaleOptimization.CLAMP -> {
                        destW = min(destW.toDouble(), maxDimension.toDouble()).toInt()
                        destH = min(destH.toDouble(), maxDimension.toDouble()).toInt()
                        rescaleDest = true
                    }

                    else -> {}
                }
            }
            this.streamMetadata!!.setHeight(destH)
            this.streamMetadata!!.setWidth(destW)
            if (param !is BlpWriteParam) {
                this.streamMetadata!!.setEncoding(
                    BlpEncodingType.JPEG,
                    if (srcCM.hasAlpha()) 8.toByte() else 0.toByte()
                )
            }

            // rescale output image if required
            if (rescaleDest) {
                processWarningOccurred(
                    BlpBundle.message(
                        "WriteResize",
                        destImg.width, destImg.height, destW,
                        destH
                    ), imageIndex
                )
                val destImgNew = BufferedImage(
                    srcCM, destImg
                        .raster.createCompatibleWritableRaster(
                            destW,
                            destH
                        ), srcCM.isAlphaPremultiplied(), null
                )
                val graphics = destImgNew.createGraphics()
                val rh = RenderingHints(
                    RenderingHints.KEY_INTERPOLATION,
                    RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR
                )
                graphics.setRenderingHints(rh)
                graphics.drawImage(
                    destImg.getScaledInstance(
                        destW, destH,
                        Image.SCALE_AREA_AVERAGING
                    ), 0, 0, destW, destH, null
                )
                graphics.dispose()
                destImg = destImgNew
            }

            // construct mipmap manager
            if (this.streamMetadata!!.getVersion() < 1) {
                // external mipmaps
                val path = if (output is File) (output as File).toPath()
                else if (output is Path) output as Path
                else throw IllegalStateException(
                    "Version 0 can only be written to Path of File."
                )
                val emm = BlpExternalMipmapManager(path)
                mipmapWriter = object : MipmapWriter() {
                    override fun setMipmapDataChunk(mipmap: Int, mmData: ByteArray?) {
                        emm.setMipmapDataChunk(mipmap, mmData)
                    }
                }
            } else {
                // internal mipmaps
                val imm = BlpInternalMipmapManager()
                mipmapWriter = object : MipmapWriter() {
                    private var objectPos = -1L

                    override fun writeMipmapManager(ios: ImageOutputStream?) {
                        if (objectPos == -1L) {
                            objectPos = ios!!.streamPosition
                        } else {
                            ios!!.seek(objectPos)
                        }
                        imm.writeObject(ios)
                    }

                    override fun startMipmapSequence(ios: ImageOutputStream?) {
                        imm.setMipmapDataChunkBlockOffset(ios!!)
                    }

                    override fun setMipmapDataChunk(mipmap: Int, mmData: ByteArray?) {
                        imm.setMipmapDataChunk(iosOutput!!, mipmap, mmData!!)
                    }
                }
            }

            // construct mipmap processor
            val encodingType = this.streamMetadata!!
                .encodingType
            blpMipmapProcessor = when (encodingType) {
                BlpEncodingType.INDEXED -> BlpIndexedBlpMipmapProcessor(
                    this.streamMetadata!!.alphaBits.toInt()
                )

                BlpEncodingType.JPEG -> BlpJPEGBlpMipmapProcessor(
                    this.streamMetadata!!.alphaBits.toInt()
                )

                BlpEncodingType.UNKNOWN -> throw IIOException("Unsupported encoding type.")
            }

            // write out header
            iosOutput!!.seek(0)
            this.streamMetadata!!.writeObject(iosOutput!!)
            mipmapWriter!!.writeMipmapManager(iosOutput)

            mmDataList = ArrayList<ByteArray?>(
                this.streamMetadata!!.mipmapCount
            )
        }

        // mipmap count test
        val mmCount = this.streamMetadata!!.mipmapCount
        if (imageIndex >= mmCount) throw IIOException("Image limit reached.")

        // image scale test
        var mmH = this.streamMetadata!!.getHeight(imageIndex)
        var mmW = this.streamMetadata!!.getWidth(imageIndex)
        if (destW != mmW || destH != mmH) throw IIOException(
            String.format(
                "Invalid image dimensions: Got %d*%d pixels requires %d*%d pixels.",
                destW, destH, mmW, mmH
            )
        )

        // encode image
        processImageStarted(imageIndex)
        var mmData = blpMipmapProcessor!!.encodeMipmap(
            destImg, param,
            Consumer { warn: String? -> this.processWarningOccurred(warn!!, imageIndex) })

        // write out mipmap data
        if (blpMipmapProcessor!!.mustPostProcess()) {
            mmDataList!!.add(mmData)
        } else {
            if (!canWriteMipmaps && blpMipmapProcessor!!.canDecode()) {
                blpMipmapProcessor!!.writeObject(iosOutput)
                mipmapWriter!!.startMipmapSequence(iosOutput)
                canWriteMipmaps = true
            }
            mipmapWriter!!.setMipmapDataChunk(imageIndex, mmData)
            mipmapWriter!!.writeMipmapManager(iosOutput)
        }
        imageIndex += 1
        processImageComplete()

        // resolve auto mipmap
        var autoMipmap = true
        if (param is BlpWriteParam) {
            autoMipmap = param.isAutoMipmap
        }

        // apply auto mipmaps
        if (autoMipmap) {
            val rh = RenderingHints(
                RenderingHints.KEY_INTERPOLATION,
                RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR
            )
            while (imageIndex < mmCount) {
                // create scaled image
                processImageStarted(imageIndex)
                mmH = this.streamMetadata!!.getHeight(imageIndex)
                mmW = this.streamMetadata!!.getWidth(imageIndex)
                val mmImg = BufferedImage(
                    srcCM, destImg
                        .raster.createCompatibleWritableRaster(mmW, mmH),
                    srcCM.isAlphaPremultiplied(), null
                )
                val graphics = mmImg.createGraphics()
                graphics.setRenderingHints(rh)
                graphics.drawImage(
                    destImg.getScaledInstance(
                        mmW, mmH,
                        Image.SCALE_AREA_AVERAGING
                    ), 0, 0, mmW, mmH, null
                )
                graphics.dispose()

                // encode image
                mmData = blpMipmapProcessor!!.encodeMipmap(
                    mmImg, param,
                    Consumer { warn: String? -> this.processWarningOccurred(warn!!, imageIndex) })

                // write out mipmap data
                if (blpMipmapProcessor!!.mustPostProcess()) {
                    mmDataList!!.add(mmData)
                } else {
                    mipmapWriter!!.setMipmapDataChunk(imageIndex, mmData)
                    mipmapWriter!!.writeMipmapManager(iosOutput)
                }
                imageIndex += 1
                processImageComplete()
            }
        }

        if (imageIndex == mmCount) {
            // post process mipmaps
            if (blpMipmapProcessor!!.mustPostProcess()) {
                mmDataList = blpMipmapProcessor!!.postProcessMipmapData(
                    mmDataList!!,
                    Consumer { warn: String? -> this.processWarningOccurred(warn!!, -1) }) as MutableList<ByteArray?>?
                blpMipmapProcessor!!.writeObject(iosOutput)
                mipmapWriter!!.startMipmapSequence(iosOutput)
                canWriteMipmaps = true
                var i = 0
                while (i < mmCount) {
                    mipmapWriter!!.setMipmapDataChunk(i, mmDataList!![i])
                    i += 1
                }
                mipmapWriter!!.writeMipmapManager(iosOutput)
                mmDataList!!.clear()
            }

            // close internal image output stream
            if (internalOutput) {
                iosOutput!!.close()
                internalOutput = false
            }
        }
    }

    override fun setOutput(output: Any?) {
        super.setOutput(output)

        // close internal image output stream
        if (internalOutput) {
            try {
                iosOutput!!.close()
            } catch (e: IOException) {
                processWarningOccurred(BlpBundle.message("ISCloseFail", e.message!!), -1)
            }
        }

        // warn if incomple file was written
        if (!badOutput && streamMetadata != null && imageIndex != streamMetadata!!.mipmapCount) {
            processWarningOccurred(BlpBundle.message("IncompleteFile"), -1)
        }

        // reset state
        imageIndex = 0
        streamMetadata = null
        mipmapWriter = null
        blpMipmapProcessor = null
        iosOutput = null
        internalOutput = false
        badOutput = false
        mmDataList = null
        canWriteMipmaps = false
    }

    override fun dispose() {
        setOutput(null)
    }
}
