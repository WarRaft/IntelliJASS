package raft.war.image.blp

/**
 * Enum class of all supported BLP image encoding formats. Although the color
 * component precision is fixed for each encoding type, some have multiple
 * supported alpha component precisions. Methods exist to query which alpha
 * component precisions are supported.
 *
 *
 * Only formats which are supported are available. Many World of Warcraft image
 * formats are currently not supported due to a lack of a detailed specification
 * and test cases.
 *
 * @author Imperial Good
 */
enum class BlpEncodingType(alphaBitsMask: Int, minVestion: Int) {
    /**
     * Images stored as JFIF (commonly called JPEG) files. Non-standard 8 bit
     * per component BGRA is used. Most JPEG image readers are not directly
     * compatible with the image files directly as they may incorrectly perform
     * a Y'CrCb to RGB color space conversions.
     *
     *
     * Supports 0 and 8 bit alpha. Alpha component values are always present but
     * are opaque for 0 bit alpha.
     *
     *
     * Mipmap images share the same common JPEG file header to reduce file size.
     * JPEG component data is already compressed so the resulting BLP file will
     * not gain much from further compression. JPEG compression is lossy and can
     * be controlled with standard quality settings.
     */
    JPEG(0x101, 0),

    /**
     * Images stored using indexed color. A 256 index BGR lookup table (palette)
     * is used to interpret the 8 bit index band. Alpha is supported by a
     * separate multi-pixel packed band.
     *
     *
     * Supports 0, 1, 4 and 8 bit alpha. Alpha component values with sub-byte
     * precision are stored in a multi-pixel packed way for improved storage
     * efficiency.
     *
     *
     * Mipmap images share the same 256 color palette to reduce file size.
     * Storage is technically lossless and depending on content the resulting
     * BLP files can greatly benefit from further compression. Encoding an image
     * into indexed color for storage can cause a loss in color space.
     */
    INDEXED(0x113, 0),

    /**
     * This is an unsupported encoding type. Any attempt to read or write this
     * encoding type will throw an exception. Chances are this is one of the
     * poorly documented World of Warcraft BLP encoding formats.
     */
    UNKNOWN(0x001, 2);

    /**
     * Mask of what alphaBits values are valid for a given encoding type. Bit 0
     * (value 1) represents the alphaBits value of 0.
     */
    private val alphaBitsMask: Int

    /**
     * Minimum version that supports this encoding type.
     */
    val minVersion: Int

    /**
     * Cached array of valid alphaBits values generated from the alphaBitsMask.
     */
    private val alphaBitsArray: ByteArray

    init {
        var aBitsMask = alphaBitsMask
        this.alphaBitsMask = aBitsMask
        this.minVersion = minVestion

        // generate alphaBitsArray
        val alphabitsdetect = ByteArray(32)
        var detected = 0
        var i: Byte = 0
        while (aBitsMask != 0) {
            if ((aBitsMask and 0x1) != 0) alphabitsdetect[detected++] = i
            aBitsMask = aBitsMask ushr 1
            i = (i + 1).toByte()
        }

        alphaBitsArray = alphabitsdetect.copyOfRange(0, detected)
    }

    /**
     * Test if the specified alpha precision value is valid for this encoding
     * type.
     *
     * @param alphaBits the alpha bit precision.
     * @return true if the alpha bit precision is valid otherwise false.
     */
    fun isAlphaBitsValid(alphaBits: Int): Boolean = (alphaBitsMask shr alphaBits and 0x1) != 0

}
