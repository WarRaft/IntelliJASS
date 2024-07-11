package raft.war.binary.parser.w3g.commandBlock

import java.nio.ByteBuffer

interface CommandBlockAction {
    fun actionId(): Byte
    fun parse(inBuffer: ByteBuffer)
}
