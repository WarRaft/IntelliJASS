package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer

interface RecordBase {
    var timestamp: Long

    fun getRecordId(): Int
    fun parse(inBuffer: ByteBuffer)
}
