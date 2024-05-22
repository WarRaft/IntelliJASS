package guru.xgm.image.blp

import java.awt.image.BufferedImage
import java.io.IOException
import java.util.function.Consumer
import javax.imageio.ImageReadParam
import javax.imageio.ImageTypeSpecifier
import javax.imageio.ImageWriteParam
import javax.imageio.stream.ImageInputStream
import javax.imageio.stream.ImageOutputStream

/**
 * A class that is responsible for processing between mipmap data and
 * BufferedImage.
 *
 *
 * Implementations of this class are responsible for the types of images that
 * can be processed. A single instance is responsible for processing all mipmaps
 * of the same BLP file.
 *
 * @author Imperial Good
 */
abstract class BlpMipmapProcessor {
    /**
     * Set by subclasses when the MipmapProcessor is ready to call decodeMipmap.
     */
    @JvmField
    protected var canDecode: Boolean = false

    /**
     * Determines whether this MipmapProcessor requires encoded mipmaps to be
     * post processed.
     *
     *
     * If true then all encoded mipmap data must be passed through
     * postProcessMipmapData once all mipmap levels have been encoded. If false
     * then then encoded mipmap data can be further used as is.
     *
     *
     * Default assumes false.
     *
     * @return if postProcessMipmapData must be called once all encoding is
     * complete.
     */
    open fun mustPostProcess(): Boolean {
        return false
    }

    /**
     * Post processes encoded mipmap data, allowing it to be decoded.
     *
     *
     * The order which the mipmap data is provided does not matter. The List
     * returned can be the same as the input and the mipmap data might not be
     * modified. The ordering of mipmap data in the output List is not changed.
     *
     *
     * If mustFinalize is true then after calling successfully canDecode will be
     * true.
     *
     *
     * Default returns the input unchanged.
     *
     * @param mmDataList unprocessed mipmap data arrays.
     * @param handler    warning handler.
     * @return list of processed mipmap data.
     * @throws IllegalArgumentException if encodedmmData does not contain at least 1 element.
     */
    open fun postProcessMipmapData(
        mmDataList: List<ByteArray?>,
        handler: Consumer<String?>?
    ): List<ByteArray?>? {
        require(mmDataList.isNotEmpty()) { "No mipmap data." }
        return mmDataList
    }

    /**
     * Encodes an image into mipmap data.
     *
     *
     * The input image should use similar SampleModel and ColorModel to those
     * returned by getSupportedImageTypes. Other image types might have a best
     * effort attempt to encode but there is no guarantee of meaningful success
     * or accuracy.
     *
     *
     * It is assumed the input image is the correct size. No clipping or
     * subsampling is performed. Input pixel data is assumed to be in a
     * CS_LINEAR_RGB ColorSpace with no automatic ColorSpace conversion.
     * Compression quality of the ImageWriteParam may apply and may be lossy.
     *
     *
     * If mustFinalize is false then after calling successfully canDecode will
     * be true.
     *
     * @param img     input image to encode.
     * @param param   image write parameter to control encode behavior.
     * @param handler warning handler.
     * @return encoded mipmap data.
     */
    @Throws(IOException::class)
    abstract fun encodeMipmap(
        img: BufferedImage?,
        param: ImageWriteParam?, handler: Consumer<String?>?
    ): ByteArray?

    /**
     * Determines whether this MipmapProcessor can call decodeMipmap.
     *
     *
     * If canDecode is true then the object has a writable state and cann call
     * decodeMipmap.
     *
     * @return true if calls to decodeMipmap are valid.
     */
    fun canDecode(): Boolean {
        return canDecode
    }

    /**
     * Decodes mipmap data into an image.
     *
     *
     * The image produced has very strict requirements. It must be exactly the
     * dimensions of width and height. It must also be in the format of one of
     * the ImageTypeSpecifier advertised by the class. The returned image might
     * be backed by the mipmap data array for efficiency, hence the data it
     * contains should be considered final after calling.
     *
     *
     * There is no guarantee that mmData contains exactly the data needed to
     * fully produce an image. An attempt should be made to produce an image
     * from as much of the data as possible. Missing pixel data must be assigned
     * band values of 0.
     *
     *
     * No clipping or subsampling is performed. Output pixel data is assumed to
     * be in a CS_LINEAR_RGB ColorSpace with no automatic ColorSpace conversion.
     *
     *
     * Calling when canDecode is false results in unspecified behavior, usually
     * an exception.
     *
     * @param mmData  the mipmap data to decode.
     * @param param   image read parameter to control decode behavior.
     * @param width   the width of the decoded image in pixels.
     * @param height  the height of the decoded image in pixels.
     * @param handler warning handler.
     * @return the decoded mipmap image.
     */
    @Throws(IOException::class)
    abstract fun decodeMipmap(
        mmData: ByteArray?,
        param: ImageReadParam?, width: Int, height: Int,
        handler: Consumer<String?>?
    ): BufferedImage?

    /**
     * Am iterator of the image types supported by this processor.
     *
     *
     * The types in the iterator can be used to both encode and decode mipmaps.
     *
     * @param width  the width of the image in pixels.
     * @param height the height of the image in pixels.
     * @return iterator of supported image types.
     */
    abstract fun getSupportedImageTypes(
        width: Int, height: Int
    ): Iterator<ImageTypeSpecifier?>?

    @Throws(IOException::class)
    abstract fun readObject(
        src: ImageInputStream?,
        warning: Consumer<String?>?
    )

    @Throws(IOException::class)
    abstract fun writeObject(dst: ImageOutputStream?)
}
