package raft.war.ide.utils

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

    val long = if (safe) toInt().toLong() and 0xFFFFFFFFL else 0
    private fun toInt(): Int {
        var i = 0
        for (b in bytes) {
            i = i shl 8 or (b.toInt() and 0xFF)
        }
        return i
    }

    val hex = String.format("%02x", long).uppercase(Locale.getDefault())
    

    companion object {
        private const val QUOTE = 39.toByte()

        fun fromString(string: String, quoted: Boolean = false, language: RawCodeLanguage): RawCode {
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

        fun fromString(string: String, language: RawCodeLanguage): RawCode = fromString(string, false, language)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as RawCode

        return bytes.contentEquals(other.bytes)
    }

    override fun hashCode(): Int = bytes.contentHashCode()
}
