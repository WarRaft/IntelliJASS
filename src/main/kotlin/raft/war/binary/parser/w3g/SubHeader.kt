package raft.war.binary.parser.w3g

import java.nio.ByteBuffer

class SubHeader {
    var productId: Int = 0
    var version: Int = 0
    var buildNumber: Int = 0
    var flags: Int = 0
    var lengthMillis: Int = 0
    lateinit var crc32: ByteArray

    fun parse(inBuffer: ByteBuffer) {
        productId = inBuffer.getInt()
        version = inBuffer.getInt()
        buildNumber = inBuffer.getShort().toInt()
        flags = inBuffer.getShort().toInt()
        lengthMillis = inBuffer.getInt()
        crc32 = ByteArray(4)
        inBuffer[crc32]
    }
}
