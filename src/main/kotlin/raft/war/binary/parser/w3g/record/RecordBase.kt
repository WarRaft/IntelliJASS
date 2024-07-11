package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer

interface RecordBase {
    var timestamp: Long

    fun parse(inBuffer: ByteBuffer)
}
