package raft.war.binary.parser.w3g.commandBlock.action

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil
import java.nio.ByteBuffer
import java.util.*

class SyncIntegerAction : CommandBlockAction {
    var filename: String? = null
    var missionKey: String? = null
    var key: String? = null
    var value: Int = 0

    override fun parse(inBuffer: ByteBuffer) {
        this.filename = ByteBufferUtil.readUtf8CString(inBuffer)
        this.missionKey = ByteBufferUtil.readUtf8CString(inBuffer)
        this.key = ByteBufferUtil.readUtf8CString(inBuffer)
        this.value = inBuffer.getInt()
    }

    override fun actionId(): Byte = ACTION_ID

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is SyncIntegerAction) return false
        return value == other.value && filename == other.filename && missionKey == other.missionKey && key == other.key
    }

    override fun hashCode(): Int = Objects.hash(filename, missionKey, key, value)

    companion object {
        const val ACTION_ID: Byte = 0x6b
    }

    override fun toString(): String {
        return "SyncIntegerAction\n" +
                "\t\t\tfilename=$filename\n" +
                "\t\t\tmissionKey=$missionKey\n" +
                "\t\t\tkey=$key\n" +
                "\t\t\tvalue=$value\n"
    }
}
