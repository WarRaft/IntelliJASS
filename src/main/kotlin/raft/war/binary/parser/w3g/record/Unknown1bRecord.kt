package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer
import java.util.*

class Unknown1bRecord : RecordBase {
    override var timestamp: Long = 0

    private var unknown = 0

    override fun getRecordId(): Int = TYPE

    override fun parse(inBuffer: ByteBuffer) {
        unknown = inBuffer.getInt()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as Unknown1bRecord
        return unknown == that.unknown
    }

    override fun hashCode(): Int {
        return Objects.hash(unknown)
    }

    companion object {
        const val TYPE: Int = 0x1B
    }

    override fun toString(): String = "Time: $timestamp,\tUnknown1bRecord\n"
}
