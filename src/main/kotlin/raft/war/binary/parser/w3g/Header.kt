package raft.war.binary.parser.w3g

import java.nio.ByteBuffer

class Header {
    var firstBlockOffset: Int = 0
    var compressedSize: Int = 0
    var version: Int = 0
    var decompressedSize: Int = 0
    var blockCount: Int = 0

    fun parse(inBuffer: ByteBuffer) {
        firstBlockOffset = inBuffer.getInt()
        compressedSize = inBuffer.getInt()
        version = inBuffer.getInt()
        decompressedSize = inBuffer.getInt()
        blockCount = inBuffer.getInt()
    }
}
