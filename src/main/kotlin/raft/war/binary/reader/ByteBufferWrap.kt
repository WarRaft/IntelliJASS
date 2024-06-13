package raft.war.binary.reader

// https://github.com/mvysny/kotlin-unsigned-jvm/blob/master/src/main/kotlin/Endian.kt

class ByteBufferWrap(val bytes: ByteArray) {
    var cursor: Int = -1

    var skip: Int
        get() = cursor
        set(value) {
            cursor += value
        }

    val uint8: UInt
        get() = bytes[++cursor].toUByte().toUInt()

    val uint32le: UInt
        get() =
            bytes[++cursor].toUByte().toUInt() +
                    bytes[++cursor].toUByte().toUInt().shl(8) +
                    bytes[++cursor].toUByte().toUInt().shl(16) +
                    bytes[++cursor].toUByte().toUInt().shl(24)

    val uint32be: UInt
        get() =
            bytes[++cursor].toUByte().toUInt().shl(24) +
                    bytes[++cursor].toUByte().toUInt().shl(16) +
                    bytes[++cursor].toUByte().toUInt().shl(8) +
                    bytes[++cursor].toUByte().toUInt()

    val float32le: Float
        get() =
            Float.fromBits(
                bytes[++cursor].toInt() or
                        bytes[++cursor].toInt().shl(8) or
                        bytes[++cursor].toInt().shl(16) or
                        bytes[++cursor].toInt().shl(24)
            )


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
