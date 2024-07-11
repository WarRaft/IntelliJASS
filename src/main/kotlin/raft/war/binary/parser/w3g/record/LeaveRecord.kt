package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer
import java.util.*

class LeaveRecord : RecordBase {
    override var timestamp: Long = 0

    var reason: Int = 0
    var playerId: Int = 0
    var result: Int = 0
    var unknown: Int = 0

    override fun parse(inBuffer: ByteBuffer) {
        reason = inBuffer.getInt()
        playerId = inBuffer.get().toInt() and 0xFF
        result = inBuffer.getInt()
        unknown = inBuffer.getInt()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as LeaveRecord
        return reason == that.reason && playerId == that.playerId && result == that.result && unknown == that.unknown
    }

    override fun hashCode(): Int {
        return Objects.hash(reason, playerId, result, unknown)
    }

    companion object {
        const val ID: Int = 0x17
    }

    override fun toString(): String = "☠️Time: $timestamp,\tLeaveRecord\n" +
            "\treason: $reason\n" +
            "\tplayerId: $playerId\n" +
            "\tresult: $result\n" +
            "\tunknown: $unknown\n"
}
