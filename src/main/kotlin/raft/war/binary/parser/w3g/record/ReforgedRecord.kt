package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer
import java.util.*

class ReforgedRecord : RecordBase {
    override var timestamp: Long = 0

    var subType: Int = 0
    lateinit var unknown: ByteArray

    override fun parse(inBuffer: ByteBuffer) {
        subType = inBuffer.get().toInt() and 0xFF
        val unknownLength = Integer.toUnsignedLong(inBuffer.getInt())
        unknown = ByteArray(unknownLength.toInt())
        inBuffer[unknown]
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as ReforgedRecord
        return subType == that.subType && unknown.contentEquals(that.unknown)
    }

    override fun hashCode(): Int {
        var result = Objects.hash(subType)
        result = 31 * result + unknown.contentHashCode()
        return result
    }

    companion object {
        const val ID: Int = 0x39
    }

    override fun toString(): String = "Time: $timestamp,\tReforgedRecord\n"
}
