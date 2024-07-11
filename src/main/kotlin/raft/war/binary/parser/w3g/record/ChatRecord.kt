package raft.war.binary.parser.w3g.record

import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil
import java.nio.ByteBuffer
import java.util.*

class ChatRecord : RecordBase {
    override var timestamp: Long = 0

    var playerId: Byte = 0
    var chatMode: Int? = null
    var flags: Byte = 0
    var message: String? = null

    override fun parse(inBuffer: ByteBuffer) {
        playerId = inBuffer.get()
        inBuffer.getShort() // length
        flags = inBuffer.get()
        chatMode = if ((flags.toInt() != 0x10)) inBuffer.getInt() else null
        message = ByteBufferUtil.readUtf8CString(inBuffer)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || javaClass != other.javaClass) return false
        val that = other as ChatRecord
        return playerId == that.playerId && flags == that.flags && chatMode == that.chatMode && message == that.message
    }

    override fun hashCode(): Int = Objects.hash(playerId, chatMode, flags, message)

    companion object {
        const val ID: Int = 0x20
    }

    override fun toString(): String = "Time: $timestamp,\tChatRecord" +
            "\tplayerId: $playerId\n" +
            "\tchatMode: $chatMode\n" +
            "\tflags: $flags\n" +
            "\tmessage: ${message?.replace("\r", "\n")}\n"
}
