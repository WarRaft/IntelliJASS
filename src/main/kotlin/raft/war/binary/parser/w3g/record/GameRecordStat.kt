package raft.war.binary.parser.w3g.record

import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.*

class GameRecordStat {
    var speed: Int = 0
    var isHideTerrain: Boolean = false
    var isMapExplored: Boolean = false
    var isAlwaysVisible: Boolean = false
    var isDefault: Boolean = false
    var observerMode: Int = 0
    var isTeamsTogether: Boolean = false
    var isFixedTeams: Boolean = false
    var isFullSharedUnitControl: Boolean = false
    var isRandomHero: Boolean = false
    var isRandomRaces: Boolean = false
    var isReferees: Boolean = false
    lateinit var mapChecksum: ByteArray
    lateinit var mapChecksumSha1: ByteArray
    var mapPath: String? = null
    var creator: String? = null
    var mapWidth: Int = 0
    var mapHeight: Int = 0

    fun parseDecoded(inBuffer: ByteBuffer) {
        this.speed = inBuffer.get().toInt() and 0xFF
        val secondByte = inBuffer.get().toInt() and 0xFF
        val thirdByte = inBuffer.get().toInt() and 0xFF
        val fourthByte = inBuffer.get().toInt() and 0xFF
        inBuffer.get() // Skip one byte

        this.mapWidth = java.lang.Short.toUnsignedInt(inBuffer.getShort())
        this.mapHeight = java.lang.Short.toUnsignedInt(inBuffer.getShort())
        this.mapChecksum = ByteArray(4)
        inBuffer[mapChecksum, 0, 4]
        this.mapPath = ByteBufferUtil.readUtf8CString(inBuffer)
        this.creator = ByteBufferUtil.readUtf8CString(inBuffer)
        inBuffer.get() // Skip one byte
        this.mapChecksumSha1 = ByteArray(20)
        inBuffer[mapChecksumSha1, 0, 20]

        this.isHideTerrain = (secondByte and 1) != 0
        this.isMapExplored = (secondByte and 2) != 0
        this.isAlwaysVisible = (secondByte and 4) != 0
        this.isDefault = (secondByte and 8) != 0
        this.observerMode = (secondByte and 48) ushr 4
        this.isTeamsTogether = (secondByte and 64) != 0
        this.isFixedTeams = (thirdByte and 6) != 0
        this.isFullSharedUnitControl = (fourthByte and 1) != 0
        this.isRandomHero = (fourthByte and 2) != 0
        this.isRandomRaces = (fourthByte and 4) != 0
        this.isReferees = (fourthByte and 64) != 0
    }

    fun parse(inBuffer: ByteBuffer?) {
        val encodedStatString = ByteBufferUtil.readCStringBytes(inBuffer)
        val decoded = decode(ByteBuffer.wrap(encodedStatString)).order(ByteOrder.LITTLE_ENDIAN)
        parseDecoded(decoded)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as GameRecordStat
        return speed == that.speed && isHideTerrain == that.isHideTerrain && isMapExplored == that.isMapExplored && isAlwaysVisible == that.isAlwaysVisible && isDefault == that.isDefault && observerMode == that.observerMode && isTeamsTogether == that.isTeamsTogether && isFixedTeams == that.isFixedTeams && isFullSharedUnitControl == that.isFullSharedUnitControl && isRandomHero == that.isRandomHero && isRandomRaces == that.isRandomRaces && isReferees == that.isReferees && mapWidth == that.mapWidth && mapHeight == that.mapHeight && mapChecksum.contentEquals(
            that.mapChecksum
        ) && mapChecksumSha1.contentEquals(that.mapChecksumSha1) && mapPath == that.mapPath && creator == that.creator
    }

    override fun hashCode(): Int {
        var result = Objects.hash(
            speed,
            isHideTerrain,
            isMapExplored,
            isAlwaysVisible,
            isDefault,
            observerMode,
            isTeamsTogether,
            isFixedTeams,
            isFullSharedUnitControl,
            isRandomHero,
            isRandomRaces,
            isReferees,
            mapPath,
            creator,
            mapWidth,
            mapHeight
        )
        result = 31 * result + mapChecksum.contentHashCode()
        result = 31 * result + mapChecksumSha1.contentHashCode()
        return result
    }

    companion object {
        fun decode(data: ByteBuffer): ByteBuffer {
            var mask: Byte = 0
            val result = ByteBuffer.allocate(data.remaining()).order(ByteOrder.LITTLE_ENDIAN)

            while (data.hasRemaining()) {
                if (data.position() % 8 == 0) {
                    mask = data.get()
                } else {
                    if ((mask.toInt() and (1 shl (data.position() % 8))) == 0) {
                        result.put((data.get() - 1).toByte())
                    } else {
                        result.put(data.get())
                    }
                }
            }

            result.flip()
            return result
        }
    }

    override fun toString(): String {
        return "GameRecordStat\n" +
                "\t\tspeed: $speed\n" +
                "\t\tisHideTerrain: $isHideTerrain\n" +
                "\t\tisMapExplored: $isMapExplored\n" +
                "\t\tisAlwaysVisible: $isAlwaysVisible\n" +
                "\t\tisDefault: $isDefault\n" +
                "\t\tobserverMode: $observerMode\n" +
                "\t\tisTeamsTogether: $isTeamsTogether\n" +
                "\t\tisFixedTeams: $isFixedTeams\n" +
                "\t\tisFullSharedUnitControl: $isFullSharedUnitControl\n" +
                "\t\tisRandomHero: $isRandomHero\n" +
                "\t\tisRandomRaces: $isRandomRaces\n" +
                "\t\tisReferees: $isReferees\n" +
                "\t\tmapChecksum: ${
                    mapChecksum.joinToString(" ", "[", "]") {
                        String.format("0x%02X", it)
                    }
                }\n" +
                "\t\tmapChecksumSha1: ${
                    mapChecksumSha1.joinToString(" ", "[", "]") {
                        String.format("0x%02X", it)
                    }
                }\n" +
                "\t\tmapPath: $mapPath\n" +
                "\t\tcreator: $creator\n" +
                "\t\tmapWidth: $mapWidth\n" +
                "\t\tmapHeight: $mapHeight\n"
    }

}
