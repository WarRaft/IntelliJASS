package raft.war.binary.parser.w3g.commandBlock.action

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction
import java.nio.ByteBuffer
import java.util.*

class Unknown62Action : CommandBlockAction {
    var unknownA: Int = 0
    var unknownB: Int = 0
    var unknownC: Int = 0

    override fun parse(inBuffer: ByteBuffer) {
        unknownA = inBuffer.getInt()
        unknownB = inBuffer.getInt()
        unknownC = inBuffer.getInt()
    }

    override fun actionId(): Byte = ACTION_ID

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is Unknown62Action) return false
        return unknownA == other.unknownA && unknownB == other.unknownB && unknownC == other.unknownC
    }

    override fun hashCode(): Int = Objects.hash(unknownA, unknownB, unknownC)

    companion object {
        const val ACTION_ID: Byte = 0x62
    }

    override fun toString(): String = "Unknown62Action"
}
