package raft.war.image.blp

import org.w3c.dom.Node
import raft.war.image.blp.intellij.BlpBundle
import raft.war.image.blp.legacy.MagicInt
import java.io.IOException
import java.nio.ByteOrder
import java.util.function.Consumer
import java.util.logging.Logger
import javax.imageio.IIOException
import javax.imageio.metadata.IIOInvalidTreeException
import javax.imageio.metadata.IIOMetadata
import javax.imageio.stream.ImageInputStream
import javax.imageio.stream.ImageOutputStream
import kotlin.math.max
import kotlin.math.min

/**
 * BLP file header object. Describes the contents of a BLP file (the metadata).
 * The rest of the file is processed using this content description.
 *
 *
 * BLP header versions 0, 1 and 2 are supported. Each version imposes different
 * limitations on the state which can be represented as stated in the format
 * specification. Mutator method calls which attempt to set object state to
 * values not supported by the version will result in an
 * IllegalArgumentException being thrown.
 *
 *
 * Reading a header object with some invalid state from an image stream may
 * generate warnings however the resulting object state will still be valid.
 *
 *
 * Node view and manipulation is currently not supported as no metadata format
 * has been designed for BLP. Type cast BLP stream IIOMetadata objects to this
 * class and manipulate them directly using the many accessor and mutator
 * methods.
 *
 *
 * Only BLP version 0 and 1 are fully supported. Version 2 lacks sufficient
 * documentation to create a reliable implementation. It will still parse and
 * produce version 2 headers however such headers cannot be used in a sensible
 * way.
 *
 * @author Imperial Good
 */
class BlpStreamMetadata : IIOMetadata() {
    /**
     * The BLP Content type.
     */
    enum class ContentType {
        /**
         * Image data is stored as a JFIF (JPEG) file of BGRA components.
         */
        JPEG,

        /**
         * Image data is stored directly as a map of pixels of varying formats.
         */
        DIRECT
    }

    /**
     * The BLP Content type.
     */
    enum class PixmapType {
        /**
         * Said to be associated with JPEG content.
         */
        NONE,

        /**
         * 256 color indexed with optional alpha.
         */
        INDEXED,

        /**
         * One of a variety of sample model based compressions.
         */
        SAMPLED,

        /**
         * Separate BGRA component values.
         */
        BGRA,

        /**
         * Possibly has different component order to BGRA.
         */
        BGRA_2
    }

    /**
     * The BLP sample type, used as a form of BLP compression.
     */
    enum class SampleType {
        /**
         * DXT1 sample model. 4*4 pixels in 64 bits with 1 bit alpha support.
         */
        DXT1,

        /**
         * DXT3 sample model. 4*4 pixels in 128 bits with 4 bit alpha support.
         */
        DXT3,

        /**
         * Component sampling model with 32 bit pixels of full color.
         */
        BGRA8888,

        /**
         * Component sampling model with 16 bit pixels and alpha masking.
         */
        BGRA5551,

        /**
         * Component sampling model with 16 bit pixels of 16 value color
         * components.
         */
        BGRA4444,

        /**
         * Component sampling model with 16 bit pixels and no alpha.
         */
        BGR565,

        /**
         * Who knows!
         */
        UNKNOWN1,

        /**
         * DXT5 sample model. 4*4 pixels in 128 bits with 8 bit alpha support.
         */
        DXT5,

        /**
         * Who knows!
         */
        UNKNOWN2,

        /**
         * Component sampling model with 18 bit pixels?
         */
        BGRA2565
    }

    /**
     * BLP format version. Determines overall compatibility and features.
     */
    private var version = 1

    /**
     * Content type being used.
     */
    private var contentType: ContentType? = null

    /**
     * Pixmap type being used.
     */
    private var pixmapType: PixmapType? = null

    /**
     * Sample type being used.
     */
    private var sampleType: SampleType? = null

    /**
     * Get the alpha component bit precision. The value returned is always valid
     * for the encoding type used.
     *
     * @return the bit precision of the alpha component.
     */
    /**
     * Alpha bit precision of contained image data.
     */
    var alphaBits: Byte = 0
        private set

    /**
     * Accompanying mipmap images exist.
     */
    private var hasMipmaps: Boolean

    /**
     * Image width in pixels.
     */
    private var width: Int

    /**
     * Image height in pixels.
     */
    private var height: Int

    /**
     * An extra integer that is never used.
     */
    private var extra: Int

    /**
     * Warning consumer function. Default is to log own warnings.
     */
    private var warning: Consumer<String?>? = null

    /**
     * Constructs a BLP1 header for JPEG content with no alpha or mipmaps and
     * image dimensions of 1*1.
     */
    init {
        setEncoding(BlpEncodingType.JPEG, 0.toByte())
        hasMipmaps = true
        width = 1
        height = 1
        extra = 6
        setWarningHandler(null)
    }

    /**
     * Sets the function for processing warning messages. Warning messages are
     * usually generated during input from potentially malformed files which
     * still can be parsed.
     *
     *
     * If handler is null then a default logging function will be used.
     *
     * @param handler function to handle warning messages.
     */
    fun setWarningHandler(handler: Consumer<String?>?) {
        var handler = handler
        if (handler == null) handler = Consumer { msg: String? -> warn(msg) }
        warning = handler
    }

    val encodingType: BlpEncodingType
        /**
         * Get the general encoding type of the image. This is the high-level
         * meaning of several different fields.
         *
         * @return the encoding type for the image.
         */
        get() {
            // convert configuration to encoding
            if (contentType == ContentType.JPEG && pixmapType == PixmapType.NONE) return BlpEncodingType.JPEG
            else if (contentType == ContentType.DIRECT
                && pixmapType == PixmapType.INDEXED
            ) return BlpEncodingType.INDEXED
            return BlpEncodingType.UNKNOWN
        }

    /**
     * Set the encoding type for the image. Takes both an encoding type and
     * alpha component bit precision value to enforce consistency.
     *
     * @param encodingType the encoding type to use.
     * @param alphaBits    the bit precision of the alpha component.
     */
    fun setEncoding(encodingType: BlpEncodingType, alphaBits: Byte) {
        require(encodingType != BlpEncodingType.UNKNOWN) { "cannot use UNKNOWN encodingType" }
        require(encodingType.isAlphaBitsValid(alphaBits.toInt())) { "encodingType does not support alphaBits" }
        require(encodingType.minVersion <= version) { "version does not support encodingType" }

        // convert encoding to configuration
        when (encodingType) {
            BlpEncodingType.JPEG -> {
                contentType = ContentType.JPEG
                pixmapType = PixmapType.NONE
                sampleType = SampleType.DXT1
            }

            BlpEncodingType.INDEXED -> {
                contentType = ContentType.DIRECT
                pixmapType = PixmapType.INDEXED
                sampleType = SampleType.DXT1
            }

            else -> {
                contentType = ContentType.JPEG
                pixmapType = PixmapType.NONE
                sampleType = SampleType.DXT1
            }
        }

        this.alphaBits = alphaBits
    }

    /**
     * Get the BLP version number that is currently being used.
     *
     * @return the blp version number.
     */
    fun getVersion(): Int {
        return version
    }

    /**
     * Specify which BLP version to use. Different BLP versions have different
     * features and compatibility.
     *
     *
     * Version 0 is only used by the Warcraft III Reign of Chaos beta. Version 1
     * is used by the release versions of Warcraft III. Version 2 is used by
     * World of Warcraft.
     *
     * @param version the new version number.
     */
    fun setVersion(version: Int) {
        require(!(version < 0 || 2 < version)) { "versions 0 to 2 supported" }
        this.version = version
    }

    /**
     * Test if mipmap images are specified.
     *
     * @return true if mipmap images are specified, otherwise false.
     */
    fun hasMipmaps(): Boolean {
        return hasMipmaps
    }

    /**
     * Specify the existence of mipmap images. If true then a full series of
     * mipmap images are available. If false then only the full sized image is
     * available.
     *
     *
     * Mipmap images are usually required by model textures. Mipmap images are
     * usually not required by UI elements.
     *
     * @param hasMipmaps if mipmap images exist.
     */
    fun setMipmaps(hasMipmaps: Boolean) {
        this.hasMipmaps = hasMipmaps
    }

    /**
     * Get the image width in pixels.
     *
     * @return width in pixels.
     */
    fun getWidth(): Int {
        return width
    }

    /**
     * Get the image width in pixels for a certain mipmap level.
     *
     * @param level mipmap level.
     * @return width in pixels.
     */
    fun getWidth(level: Int): Int {
        return scaleImageDimension(width, level)
    }

    /**
     * Set the image width in pixels. Width is valid between 1 and
     * getDimensionMaximum.
     *
     * @param width width in pixels.
     */
    fun setWidth(width: Int) {
        require(!(width < 1 || this.dimensionMaximum < width)) { "Invalid dimension size." }
        this.width = width
    }

    /**
     * Get the image height in pixels.
     *
     * @return height in pixels.
     */
    fun getHeight(): Int {
        return height
    }

    /**
     * Get the image height in pixels for a certain mipmap level.
     *
     * @param level mipmap level.
     * @return height in pixels.
     */
    fun getHeight(level: Int): Int {
        return scaleImageDimension(height, level)
    }

    /**
     * Set the image height in pixels. height is valid between 1 and
     * getDimensionMaximum.
     *
     * @param height height in pixels.
     */
    fun setHeight(height: Int) {
        require(!(height < 1 || this.dimensionMaximum < height)) { "Invalid dimension size." }
        this.height = height
    }

    val dimensionMaximum: Int
        /**
         * Maximum image dimension size in pixels. With a dimension larger than this
         * value are not valid.
         *
         * @return the maximum allowed dimension size.
         */
        get() {
            if (version < 1) return LEGACY_MAX_DIMENSION
            return (1 shl BlpCommon.MIPMAP_MAX) - 1
        }

    val mipmapCount: Int
        /**
         * Convenience method that derives the number of mipmap levels for the
         * image.
         *
         *
         * Images without mipmaps have only 1 level which is the full sized image.
         * Images with mipmaps have a number of mipmaps based on the maximum of
         * image height and width.
         *
         * @return the number of mipmap levels for the image.
         */
        get() =// if mipmaps then number of mipmap levels based on largest dimension
            if (hasMipmaps) 32 - Integer.numberOfLeadingZeros(
                max(
                    width.toDouble(),
                    height.toDouble()
                ).toInt()
            ) else 1

    fun readObject(src: ImageInputStream) {
        src.setByteOrder(ByteOrder.LITTLE_ENDIAN)

        // read and validate magic and version
        version = BlpCommon.resolveVersion(
            MagicInt(
                src.readInt(),
                ByteOrder.LITTLE_ENDIAN
            )
        )
        if (version == -1) {
            throw IIOException("Not valid BLP file magic.")
        }

        // read contentType
        var content = src.readInt()
        val ctvalues = ContentType.entries.toTypedArray()
        if (content >= ctvalues.size || content < 0) {
            val defaultContentType = ContentType.JPEG
            warning!!.accept(
                BlpBundle.message("BadContent", content, defaultContentType.name)
            )
            content = defaultContentType.ordinal
        }
        contentType = ctvalues[content]

        if (version < 2) {
            // read alphaBits
            alphaBits = src.readInt().toByte()

            // fill in non-existent fields
            pixmapType = PixmapType.entries[contentType!!.ordinal]
            sampleType = SampleType.DXT1
        } else {
            // read pixmapType
            val pixmap = src.readByte().toInt() and 0xFF
            val ptvalues = PixmapType.entries.toTypedArray()
            if (pixmap >= ptvalues.size) throw IIOException(
                String.format(
                    "pixmap type %#0X is invalid", pixmap
                )
            )
            pixmapType = ptvalues[pixmap]

            // read alphaBits
            alphaBits = src.readByte()

            // read sampleType
            val sample = src.readByte().toInt() and 0xFF
            val stvalues: Array<SampleType?> = SampleType.entries.toTypedArray()
            if (sample >= stvalues.size) throw IIOException(
                String.format(
                    "sample type %#0X is invalid", sample.toByte()
                )
            )
            sampleType = SampleType.entries[sample]

            // read hasMipmaps
            hasMipmaps = src.readByte().toInt() != 0
        }

        val encodingType = this.encodingType
        if (encodingType == BlpEncodingType.UNKNOWN) warning!!.accept(
            BlpBundle.message(
                "BadEncoding",
                contentType!!.name,
                pixmapType!!.name,
                sampleType!!.name
            )
        )
        if (!encodingType.isAlphaBitsValid(alphaBits.toInt())) {
            val defaultAlphaBits = 0
            warning!!.accept(BlpBundle.message("BadAlpha", alphaBits, defaultAlphaBits))
            alphaBits = defaultAlphaBits.toByte()
        }

        // read width and height
        width = src.readInt()
        height = src.readInt()

        // clamp width and height
        val maxDim = this.dimensionMaximum
        val widthU = width.toLong() and 0xFFFFFFFFL
        val heightU = height.toLong() and 0xFFFFFFFFL
        if (maxDim < max(widthU.toDouble(), heightU.toDouble())) {
            if (version < 1) {
                // assumed behavior based on Warcraft III prior to 1.27b
                throw IIOException(
                    String.format(
                        "Invalid image dimensions %d*%d pixels.",
                        width, height
                    )
                )
            }
            val oldWidth = widthU
            val oldHeight = heightU

            // clamp to maximum dimension
            width = (min(widthU.toDouble(), maxDim.toDouble())).toInt()
            height = (min(heightU.toDouble(), maxDim.toDouble())).toInt()

            warning!!.accept(BlpBundle.message("BadDimension", oldWidth, oldHeight, width, height))
        }

        if (version < 2) {
            // read extra value
            extra = src.readInt()

            // read hasMipmaps
            hasMipmaps = src.readInt() != 0
        }

        // warn about unusable mipmaps
        var bigDim = max(width.toDouble(), height.toDouble()).toInt()
        if (version < 2 && LEGACY_MAX_DIMENSION < bigDim) {
            var i = 0
            while (LEGACY_MAX_DIMENSION < bigDim) {
                i += 1
                bigDim = bigDim ushr 1
            }
            warning!!.accept(BlpBundle.message("WastefulDimension", i))
        }
    }

    fun writeObject(dst: ImageOutputStream) {
        dst.setByteOrder(ByteOrder.LITTLE_ENDIAN)

        // write magic and version
        dst.writeInt(BlpCommon.resolveMagic(version).toInt(ByteOrder.LITTLE_ENDIAN))

        // write content
        dst.writeInt(contentType!!.ordinal)

        if (version < 2) {
            // write alphaBits
            dst.writeInt(alphaBits.toInt() and 0xFF)
        } else {
            // write pixmapType
            dst.writeByte(pixmapType!!.ordinal)

            // write alphaBits
            dst.writeByte(alphaBits.toInt())

            // write sampleType
            dst.writeByte(sampleType!!.ordinal)

            // write hasMipmaps
            dst.writeByte(if (hasMipmaps) 1 else 0)
        }

        // write width and height
        dst.writeInt(width)
        dst.writeInt(height)

        if (version < 2) {
            // write unknown, value does not appear to matter.
            dst.writeInt(extra)

            // write hasMipmaps
            dst.writeInt(if (hasMipmaps) 1 else 0)
        }
    }

    override fun isReadOnly(): Boolean {
        return true
    }

    override fun getAsTree(formatName: String?): Node? {
        throw IllegalArgumentException("no formats are supported")
    }

    override fun mergeTree(formatName: String?, root: Node?) {
        throw IllegalStateException()
    }

    override fun reset() {
        throw IllegalStateException()
    }

    override fun toString(): String {
        return ("{BLP Stream Metadata: Version = " + version + ", width = "
                + width + ", height = " + height + ", content = " + contentType
                + ", pixmap = " + pixmapType + ", sample = " + sampleType
                + ", alpha bits = " + alphaBits + ", mipmaps = " + hasMipmaps
                + ", extra = " + extra + "}")
    }

    companion object {
        /**
         * The maximum dimension size allowed by version 0 and loaded by version 1.
         */
        const val LEGACY_MAX_DIMENSION: Int = 512

        private fun warn(msg: String?) {
            Logger.getLogger(BlpStreamMetadata::class.java.getName()).warning(msg)
        }

        /**
         * Scales an image dimension to be for a given mipmap level.
         *
         * @param dimension the dimension to scale in pixels.
         * @param level     the mipmap level.
         * @return the mipmap dimension in pixels.
         */
        private fun scaleImageDimension(dimension: Int, level: Int): Int {
            return max((dimension ushr level).toDouble(), 1.0).toInt()
        }
    }
}
