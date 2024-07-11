package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer

class PlayerRecord : PlayerRecordData(), RecordBase {
    override var timestamp: Long = 0

    var unknown: Int = 0

    override fun parse(inBuffer: ByteBuffer) {
        super.parse(inBuffer)
        unknown = inBuffer.getInt()
    }

    companion object {
        const val ID: Int = 0x16
    }

    override fun toString(): String = "☠️Time: $timestamp,\tPlayerRecord\n" + super.toString() +
            "\tunknown: $unknown\n"
}
