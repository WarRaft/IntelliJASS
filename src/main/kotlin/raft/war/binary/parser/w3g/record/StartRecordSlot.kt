package raft.war.binary.parser.w3g.record

import java.nio.ByteBuffer
import java.util.*

class StartRecordSlot {
    var playerId: Int = 0
    var downloadStatus: Int = 0
    var slotStatus: Int = 0
    var computer: Int = 0
    var team: Int = 0
    var color: Int = 0
    var race: Int = 0
    var computerType: Int = 0
    var handicap: Int = 0

    fun parse(inBuffer: ByteBuffer) {
        this.playerId = inBuffer.get().toInt()
        this.downloadStatus = inBuffer.get().toInt()
        this.slotStatus = inBuffer.get().toInt()
        this.computer = inBuffer.get().toInt()
        this.team = inBuffer.get().toInt()
        this.color = inBuffer.get().toInt()
        this.race = inBuffer.get().toInt()
        this.computerType = inBuffer.get().toInt()
        this.handicap = inBuffer.get().toInt()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val slotInfo = other as StartRecordSlot
        return playerId == slotInfo.playerId && downloadStatus == slotInfo.downloadStatus && slotStatus == slotInfo.slotStatus && computer == slotInfo.computer && team == slotInfo.team && color == slotInfo.color && race == slotInfo.race && computerType == slotInfo.computerType && handicap == slotInfo.handicap
    }

    override fun hashCode(): Int {
        return Objects.hash(playerId, downloadStatus, slotStatus, computer, team, color, race, computerType, handicap)
    }

    override fun toString(): String = "StartRecordSlot\n" +
            "\t\t\tplayerId: $playerId\n" +
            "\t\t\tdownloadStatus: $downloadStatus\n" +
            "\t\t\tslotStatus: $slotStatus\n" +
            "\t\t\tcomputer: $computer\n" +
            "\t\t\tteam: $team\n" +
            "\t\t\tcolor: $color\n" +
            "\t\t\trace: $race\n" +
            "\t\t\tcomputerType: $computerType\n" +
            "\t\t\thandicap: $handicap\n"
}
