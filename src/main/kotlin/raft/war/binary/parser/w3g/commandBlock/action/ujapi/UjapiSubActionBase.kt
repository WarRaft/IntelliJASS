package raft.war.binary.parser.w3g.commandBlock.action.ujapi

import java.nio.ByteBuffer

interface UjapiSubActionBase {
    val subActionId: Byte

    fun parse(inBuffer: ByteBuffer?)
}
