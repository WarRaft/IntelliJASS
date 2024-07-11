package raft.war.binary.parser.w3g.record

import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil
import java.nio.ByteBuffer
import java.util.*

class GameRecord : RecordBase {
    override var timestamp: Long = 0

    var statString: GameRecordStat? = null
    var hostPlayer: PlayerRecordData? = null
    var gameName: String? = null
    private var privateString: String? = null
    var playersCount: Int = 0
    var gameType: Int = 0
    var languageId: Int = 0

    override fun parse(inBuffer: ByteBuffer) {
        statString = GameRecordStat()
        hostPlayer = PlayerRecordData()

        hostPlayer!!.parse(inBuffer)

        gameName = ByteBufferUtil.readUtf8CString(inBuffer)
        privateString = ByteBufferUtil.readUtf8CString(inBuffer)


        statString!!.parse(inBuffer)

        playersCount = inBuffer.getInt()
        gameType = inBuffer.getInt()
        languageId = inBuffer.getInt()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as GameRecord
        return playersCount == that.playersCount && gameType == that.gameType && languageId == that.languageId && statString == that.statString && hostPlayer == that.hostPlayer && gameName == that.gameName
    }

    override fun hashCode(): Int {
        return Objects.hash(statString, hostPlayer, gameName, playersCount, gameType, languageId)
    }

    companion object {
        const val ID: Int = 0x00
    }

    override fun toString(): String = "☢️Time: $timestamp,\tGameRecord\n" +
            "\tstatString: $statString\n" +
            "\thostPlayer: $hostPlayer\n" +
            "\tgameName: $gameName\n" +
            "\tprivateString: $privateString\n" +
            "\tplayersCount: $playersCount\n" +
            "\tgameType: $gameType\n" +
            "\tlanguageId: $languageId\n"
}
