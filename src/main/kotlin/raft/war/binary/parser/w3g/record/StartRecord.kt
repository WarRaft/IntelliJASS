package raft.war.binary.parser.w3g.record

import raft.war.binary.parser.w3g.parser.utils.SlotInfo
import java.nio.ByteBuffer
import java.util.*

class StartRecord : RecordBase {
    override var timestamp: Long = 0

    lateinit var slots: Array<SlotInfo?>
    private var randomSeed = 0
    private var gameMode = 0
    private var startSpotCount = 0

    override fun getRecordId(): Int {
        return TYPE
    }

    override fun parse(inBuffer: ByteBuffer) {
        inBuffer.getShort()
        val slotCount = inBuffer.get().toInt() and 0xFF

        slots = arrayOfNulls(slotCount)

        for (i in 0 until slotCount) {
            slots[i] = SlotInfo()
            slots[i]!!.parse(inBuffer)
        }

        randomSeed = inBuffer.getInt()
        gameMode = inBuffer.get().toInt() and 0xFF
        startSpotCount = inBuffer.get().toInt() and 0xFF
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as StartRecord
        return randomSeed == that.randomSeed && gameMode == that.gameMode && startSpotCount == that.startSpotCount && slots.contentEquals(
            that.slots
        )
    }

    override fun hashCode(): Int {
        var result = Objects.hash(randomSeed, gameMode, startSpotCount)
        result = 31 * result + slots.contentHashCode()
        return result
    }

    companion object {
        const val TYPE: Int = 0x19
    }

    override fun toString(): String = "🏁Time: $timestamp,\tStartRecord\n" +
            "\tslots: $slots\n" +
            "\trandomSeed: $randomSeed\n" +
            "\tgameMode: $gameMode\n" +
            "\tstartSpotCount: ${startSpotCount}\n"
}
