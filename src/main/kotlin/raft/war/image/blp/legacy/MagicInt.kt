package raft.war.image.blp.legacy

import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 *
 * Class to represent a 32 bit magic number.
 *
 *
 * Such numbers are often produced by combining four human readable 8 bit ASCII
 * characters. It is often desired to treat them as a `String` when
 * interacting with users to preserve the literal meaning while processing them
 * as `int` internally for speed.
 *
 *
 * An internal magic number represents a magic number in primitive form such as
 * used by file IO. A human readable magic string represents a magic number as a
 * 4 character string. Conversion methods can specify a specific ByteOrder to
 * use so that the internal magic number produced is compatible with a stream or
 * buffer using the same ByteOrder. This removes the need to change ByteOrder or
 * invert human readable magic strings.
 *
 * @author Imperial Good
 */
class MagicInt : Comparable<MagicInt> {
    private val value: Int

    /**
     * Constructs a magic number from an internal magic number with the
     * specified byte order.
     *
     * @param value
     * internal magic number.
     * @param bo
     * byte order to use.
     */
    constructor(value: Int, bo: ByteOrder?) {
        this.value = ByteBuffer.allocate(4).order(bo).putInt(0, value)
            .order(ByteOrder.BIG_ENDIAN).getInt(0)
    }

    /**
     * Constructs a magic number from a human readable magic string.
     *
     *
     * A readable magic string must be exactly 4 characters long. Only
     * characters that can fit into 1 byte will parse correctly.
     *
     * @param value
     * - the type string.
     * - if the type string is not exactly 4 characters long.
     */
    constructor(value: String) {
        this.value = stringToMagic(value)
    }

    override fun hashCode(): Int {
        return value
    }

    override fun equals(obj: Any?): Boolean {
        if (this === obj) return true
        if (obj == null) return false
        if (javaClass != obj.javaClass) return false
        val other = obj as MagicInt
        if (value != other.value) return false
        return true
    }

    /**
     * Gets the magic number as a human readable magic string.
     *
     * @return a human readable magic string.
     */
    override fun toString(): String {
        return magicToString(value)
    }

    /**
     * Gets an internal magic number assuming BIG_ENDIAN byte order.
     *
     * @return the internal magic number.
     */
    fun toInt(): Int {
        return value
    }

    /**
     * Gets an internal magic number using the specified byte order..
     *
     * @param bo
     * byte order to use.
     * @return the internal magic number.
     */
    fun toInt(bo: ByteOrder?): Int {
        return ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN)
            .putInt(0, value).order(bo).getInt(0)
    }

    override fun compareTo(o: MagicInt): Int {
        return value - o.value
    }

    companion object {
        /**
         * Converts a human readable magic string into an internal magic number.
         *
         *
         * A readable magic number must be exactly 4 characters long. Only
         * characters that can fit into 1 byte will parse correctly.
         *
         * @param value
         * human readable magic number.
         * @return internal magic number.
         * if the type string is not exactly 4 characters long.
         */
        fun stringToMagic(value: String): Int {
            if (value.length != 4) throw StringIndexOutOfBoundsException(
                String.format(
                    "'%s' is not a valid type string (must be exactly 4 characters long)",
                    value
                )
            )
            val bytes = ByteArray(4)
            var i = 0
            while (i < 4) {
                bytes[i] = value[i].code.toByte()
                i += 1
            }
            return ByteBuffer.wrap(bytes).getInt(0)
        }

        /**
         * Converts an internal magic number into a human readable magic string.
         *
         *
         * Not all magic numbers might be human readable.
         *
         * @param value
         * internal magic number.
         * @return a human readable magic string.
         */
        fun magicToString(value: Int): String {
            val bytes = ByteBuffer.allocate(4).putInt(0, value).array()
            val chars = CharArray(4)
            var i = 0
            while (i < 4) {
                chars[i] = Char(bytes[i].toUShort())
                i += 1
            }
            return String(chars)
        }
    }
}
