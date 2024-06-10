package raft.war.language.jass.codeInspection.number

import com.intellij.psi.PsiElement
import java.nio.charset.StandardCharsets
import java.util.*

class JassRawcode(elem: PsiElement) {
    private fun isSafe(): Boolean {
        for (b in bytes) {
            if (b < 32 || b > 126 || b.toInt() == 39) return false
        }
        return true
    }

    var safe: Boolean
    var validLength: Boolean
    var error: Boolean
    var bytes: ByteArray
    var integer: Int
    var intstr: String
    var hex: String
    var strval: String

    init {
        val text = elem.text
        val textbytes = text.toByteArray(StandardCharsets.UTF_8)

        if (textbytes.size < 2 || textbytes[0].toInt() != 39 || textbytes[textbytes.size - 1].toInt() != 39) {
            error = true
            safe = false
            bytes = ByteArray(0)
            integer = 0
            intstr = "0"
            hex = "0x0"
            validLength = false
            strval = ""
        } else {
            error = false
            bytes = Arrays.copyOfRange(textbytes, 1, textbytes.size - 1)
            safe = isSafe()

            strval = String(bytes, StandardCharsets.UTF_8)

            validLength = bytes.size == 1 || bytes.size == 4
            integer = bytes2int(bytes)
            intstr = (integer.toLong() and 0xFFFFFFFFL).toString()
            hex = "0x" + String.format("%02x", integer).uppercase(Locale.getDefault())
        }
    }

    companion object {
        fun bytes2int(bytes: ByteArray): Int {
            var i = 0
            for (b in bytes) {
                i = i shl 8 or (b.toInt() and 0xFF)
            }
            return i
        }
    }
}
