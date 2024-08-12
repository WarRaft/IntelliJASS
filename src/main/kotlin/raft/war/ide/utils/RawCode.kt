package raft.war.ide.utils

import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.util.*

enum class RawCodeLanguage {
    JASS, AngelScript
}

data class RawCode(val bytes: ByteArray, val language: RawCodeLanguage) {

    val size: Int
        get() = bytes.size

    val valid: Boolean = when (language) {
        RawCodeLanguage.JASS -> size == 1 || size == 4
        RawCodeLanguage.AngelScript -> size in 1..8
    }

    val safe = isSafe()
    private fun isSafe(): Boolean {
        for (b in bytes) {
            if (b < 32 || b > 126 || b == QUOTE) return false
        }
        return true
    }

    val ulong = toUlong()
    private fun toUlong(): ULong {
        var i: ULong = 0u
        for (b in bytes) {
            i = (i shl 8) or (b.toULong() and 0xFFu)
        }
        return i
    }

    val string = String(bytes)
    val quoted = "'$string'"

    val hex = bytes.joinToString(separator = "") { b -> "%02x".format(b) }

    companion object {
        private const val QUOTE = 39.toByte()

        fun fromString(string: String, language: RawCodeLanguage, quoted: Boolean = false): RawCode {
            val textbytes = string.toByteArray(StandardCharsets.UTF_8)
            if (textbytes.size < 2) {
                return RawCode(byteArrayOf(), language)
            }

            if (quoted) {
                return if (textbytes[0] == QUOTE || textbytes[textbytes.size - 1] == QUOTE) {
                    RawCode(Arrays.copyOfRange(textbytes, 1, textbytes.size - 1), language)
                } else {
                    RawCode(byteArrayOf(), language)
                }
            }

            return RawCode(byteArrayOf(), language)
        }

        private fun fromULong(ulong: ULong?, language: RawCodeLanguage): RawCode {
            if (ulong == null) return RawCode(byteArrayOf(), language)

            val array = ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(ulong.toLong()).array()

            var offset = 0
            for (i in 0 until 8) {
                if (array[i].toInt() != 0) break
                ++offset
            }

            return RawCode(if (offset == 0) array else Arrays.copyOfRange(array, offset, 8), language)
        }

        fun fromIntString(string: String, language: RawCodeLanguage): RawCode =
            fromULong(string.toULongOrNull(), language)

        @OptIn(ExperimentalStdlibApi::class)
        fun fromHexString(string: String, language: RawCodeLanguage): RawCode =
            fromULong(string.removePrefix("0x").removePrefix("$").hexToULong(), language)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as RawCode

        return bytes.contentEquals(other.bytes)
    }

    override fun hashCode(): Int = bytes.contentHashCode()
}
