package raft.war.binary.parser.w3g.record

import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil
import java.nio.ByteBuffer
import java.util.*

open class PlayerRecordData {
    var playerId: Int = 0
    var playerName: String? = null
    var runtimeOfPlayers: Int? = null
    var race: Int? = null
    lateinit var skippedBytes: ByteArray

    open fun parse(inBuffer: ByteBuffer) {
        this.playerId = inBuffer.get().toInt()
        this.playerName = ByteBufferUtil.readUtf8CString(inBuffer)
        when (val additionalSize = inBuffer.get().toInt()) {
            8 -> {
                this.runtimeOfPlayers = inBuffer.get().toInt()
                this.race = inBuffer.get().toInt()
                this.skippedBytes = ByteArray(6)
                inBuffer[skippedBytes]
            }

            else -> {
                this.skippedBytes = ByteArray(additionalSize)
                inBuffer[skippedBytes]
            }
        }
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as PlayerRecordData
        return playerId == that.playerId && playerName == that.playerName && runtimeOfPlayers == that.runtimeOfPlayers && race == that.race && skippedBytes.contentEquals(
            that.skippedBytes
        )
    }

    override fun hashCode(): Int {
        var result = Objects.hash(playerId, playerName, runtimeOfPlayers, race)
        result = 31 * result + skippedBytes.contentHashCode()
        return result
    }

    override fun toString(): String = "\tPlayerRecordData\n" +
            "\tplayerId: $playerId\n" +
            "\t\tplayerName: $playerName\n" +
            "\t\truntimeOfPlayers: $runtimeOfPlayers\n" +
            "\t\trace: $race\n" +
            "\t\tskippedBytes: $skippedBytes\n"
}
