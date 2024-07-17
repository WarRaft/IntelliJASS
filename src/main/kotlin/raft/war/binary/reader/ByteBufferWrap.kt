package raft.war.binary.reader

// https://github.com/mvysny/kotlin-unsigned-jvm/blob/master/src/main/kotlin/Endian.kt

class ByteBufferWrap(val bytes: ByteArray) {
    var cursor: Int = -1

    var skip: Int
        get() = cursor
        set(value) {
            cursor += value
        }

    private inline val ub: UByte get() = bytes[++cursor].toUByte()
    private inline val i: Int get() = ub.toInt()
    private inline val ui: UInt get() = ub.toUInt()

    val uint8: UInt get() = ub.toUInt()

    val uint32le: UInt
        get() = ui + ui.shl(8) + ui.shl(16) + ui.shl(24)

    val uint32be: UInt
        get() = ui.shl(24) + ui.shl(16) + ui.shl(8) + ui

    val float32le: Float
        get() = Float.fromBits(i or i.shl(8) or i.shl(16) or i.shl(24))

    val string: String
        get() {
            var b: ByteArray = byteArrayOf()
            while (true) {
                val n = bytes[++cursor]
                if (n.toInt() == 0) break
                b += n
            }
            return b.toString(Charsets.UTF_8)
        }

    companion object {
        @OptIn(ExperimentalStdlibApi::class)
        fun uint2id(value: UInt): String {
            var ba: ByteArray = byteArrayOf()

            for (i in 24 downTo 0 step 8) {
                val b = value.shr(i).and(0xFFu).toByte()
                if (b < 32 || b > 126 || b.toInt() == 39) return "0x" + value.toHexString(HexFormat.UpperCase)
                ba += b
            }

            return ba.toString(Charsets.UTF_8)
        }
    }
}
