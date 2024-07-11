package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer
import java.util.*

class Unknown1cRecord : RecordBase {
    override var timestamp: Long = 0

    var unknown: Int = 0

    override fun parse(inBuffer: ByteBuffer) {
        unknown = inBuffer.getInt()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as Unknown1cRecord
        return unknown == that.unknown
    }

    override fun hashCode(): Int {
        return Objects.hash(unknown)
    }

    companion object {
        const val ID: Int = 0x1C
    }

    override fun toString(): String = "Time: $timestamp,\tUnknown1cRecord\n"
}
