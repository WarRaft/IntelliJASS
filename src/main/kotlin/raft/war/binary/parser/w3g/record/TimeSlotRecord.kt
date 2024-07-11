package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer
import java.util.*

open class TimeSlotRecord : RecordBase {
    override var timestamp: Long = 0

    var timeIncrement: Int = 0
    lateinit var rawData: ByteArray

    override fun parse(inBuffer: ByteBuffer) {
        val length = inBuffer.getShort() - 2
        timeIncrement = inBuffer.getShort().toInt() and 0xFFFF
        rawData = ByteArray(length)
        inBuffer[rawData]
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as TimeSlotRecord
        return timeIncrement == that.timeIncrement && rawData.contentEquals(that.rawData)
    }

    override fun hashCode(): Int {
        var result = Objects.hash(timeIncrement)
        result = 31 * result + rawData.contentHashCode()
        return result
    }

    override fun toString(): String = "⏰Time: $timestamp -> ${timestamp + timeIncrement},\tTimeSlotRecord\n"

    companion object {
        const val ID: Int = 0x1F
    }
}
