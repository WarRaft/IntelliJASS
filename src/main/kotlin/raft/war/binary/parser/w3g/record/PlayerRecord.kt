package raft.war.binary.parser.w3g.record

import raft.war.binary.parser.w3g.parser.utils.PlayerInfo
import java.nio.ByteBuffer

class PlayerRecord : PlayerInfo(), RecordBase {
    override var timestamp: Long = 0

    var unknown: Int = 0

    override fun getRecordId(): Int = TYPE

    override fun parse(inBuffer: ByteBuffer) {
        super.parse(inBuffer)
        unknown = inBuffer.getInt()
    }

    companion object {
        const val TYPE: Int = 0x16
    }

    override fun toString(): String = "☠️Time: $timestamp,\tPlayerRecord\n" +
            "\tplayerId: $playerId\n" +
            "\tplayerName: $playerName\n" +
            "\truntimeOfPlayers: $runtimeOfPlayers\n" +
            "\trace: $race\n" +
            "\tskippedBytes: $skippedBytes\n" +
            "\tunknown: $unknown\n"
}
