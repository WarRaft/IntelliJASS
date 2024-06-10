package raft.war.image.blp

import raft.war.image.blp.legacy.MagicInt

/**
 * Class containing static constants and methods shared by various other classes
 * of the BLP library.
 *
 * @author ImperialGood
 */
object BlpCommon {
    /**
     * Maximum number of mipmaps a BLP file can contain. Since version 1.
     */
    const val MIPMAP_MAX: Int = 16

    /**
     * Array containing all the BLP version magic numbers in chronological
     * order.
     */
    private val BLP_VERSION_MAGIC = arrayOf(
        MagicInt("BLP0"),
        MagicInt("BLP1"), MagicInt("BLP2")
    )

    /**
     * Converts a BLP magic number into a version number. If the magic number is
     * not a known BLP magic number then an invalid version of -1 is returned.
     *
     * @param magicint file magic number.
     * @return the BLP version number or -1 if not known.
     */
    @JvmStatic
    fun resolveVersion(magicint: MagicInt): Int {
        // simple linear search
        var i = 0
        while (i < BLP_VERSION_MAGIC.size) {
            if (magicint == BLP_VERSION_MAGIC[i]) return i
            i += 1
        }

        // failure
        return -1
    }

    /**
     * Converts a BLP version number into a magic number.
     *
     * @param ver the BLP version number.
     * @return the BLP file magic number in big-endian order.
     * @throws IndexOutOfBoundsException if ver is not a supported BLP version.
     */
    @JvmStatic
    fun resolveMagic(ver: Int): MagicInt {
        return BLP_VERSION_MAGIC[ver]
    }
}
