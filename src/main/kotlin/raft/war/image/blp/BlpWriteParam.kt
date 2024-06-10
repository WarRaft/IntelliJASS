package raft.war.image.blp

import javax.imageio.ImageWriteParam
import javax.imageio.spi.ImageWriterSpi

/**
 * ImageWriteParam for BLP images. Adds functionality to customize encode
 * behavior and encode quality.
 *
 *
 * A JPEG ImageWriterSpi can be specified to generate ImageWriters to encode
 * JPEG content BLP files with. By default a generically obtained JPEG
 * ImageWriterSpi will be used. Useful if multiple JPEG writers are installed
 * and using a specific one is desired or necessary. The JPEG ImageWriter
 * returned from the ImageWriterSpi must support writing Rasters.
 *
 *
 * Write operations can be specified to automatically generate mipmaps. When
 * specified the given image will be used to automatically fill in all remaining
 * mipmap levels. All required mipmaps, if any, will be automatically generated
 * using an area averaging algorithm. Better mipmap results might be obtainable
 * from other algorithms and explicitly specifying the mipmap images but this is
 * subject to much scientific theory and debate. Automatic mipmap generation is
 * specified on by default for ease of use.
 *
 *
 * Write operations can be specified to automatically optimize the full scale
 * image dimensions to the maximum usable dimensions when no StreamMetadata is
 * provided. Supported resizing modes include NONE, RATIO and CLAMP. NONE will
 * use the image provided unmodified. RATIO will resize down an image to the
 * maximum useful dimensions while keeping aspect ratio. CLAMP will resize down
 * an image to the maximum useful dimensions, treating each dimension
 * separately. All resizing is done using an area averaging algorithm. CLAMP is
 * specified by default for ease of use and maximum quality as BLP file aspect
 * ratio does not usually matter.
 *
 * @author Imperial Good
 */
class BlpWriteParam : ImageWriteParam() {
    var jPEGSpi: ImageWriterSpi? = null

    /**
     * The automatic scale optimization settings for image 0 if no
     * StreamMetadata is specified.
     */
    enum class ScaleOptimization {
        /**
         * No scale optimization is performed.
         */
        NONE,

        /**
         * Down-sample to largest useful size, maintaining aspect ratio.
         */
        RATIO,

        /**
         * Down-sample to largest useful size.
         */
        CLAMP
    }

    /**
     * The scale optimization setting to use on image 0 when no StreamMetadata
     * is present.
     */
    var scaleOptimization: ScaleOptimization = ScaleOptimization.CLAMP

    var isAutoMipmap: Boolean = true

    init {
        canWriteCompressed = true
        setCompressionMode(MODE_EXPLICIT)
        setCompressionQuality(DEFAULT_QUALITY)
    }

    companion object {
        /**
         * Default compression quality.
         *
         *
         * Suitable for general purpose use in Warcraft III.
         */
        const val DEFAULT_QUALITY: Float = 0.8f
    }
}
