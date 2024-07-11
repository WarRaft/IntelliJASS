package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer
import java.util.*

class ChecksumRecord : RecordBase {
    override var timestamp: Long = 0

    var checksum: Int = 0
    lateinit var unknown: ByteArray

    override fun getRecordId(): Int = TYPE

    override fun parse(inBuffer: ByteBuffer) {
        val followingLength = inBuffer.get()

        checksum = inBuffer.getInt()

        unknown = ByteArray(followingLength - 4)
        inBuffer[unknown]
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as ChecksumRecord
        return checksum == that.checksum && unknown.contentEquals(that.unknown)
    }

    override fun hashCode(): Int {
        var result = Objects.hash(checksum)
        result = 31 * result + unknown.contentHashCode()
        return result
    }

    companion object {
        const val TYPE: Int = 0x22
    }

    override fun toString(): String = "✅Time: $timestamp,\tChecksumRecord [$checksum]\n"

}
