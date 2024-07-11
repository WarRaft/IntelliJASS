package raft.war.binary.parser.w3g.commandBlock.action.ujapi

import java.nio.ByteBuffer

class UjapiKeyAction(override val subActionId: Byte) : UjapiSubActionBase {
    private var key: Short = 0
    private var metaKey: Byte = 0
    private var isKeyDown = false

    override fun parse(inBuffer: ByteBuffer?) {
        this.key = inBuffer!!.getShort()
        this.metaKey = inBuffer.get()
        this.isKeyDown = inBuffer.get() > 0
    }

    override fun toString(): String {
        return "UjapiKeyAction\n" +
                "\t\t\tkey=$key\n" +
                "\t\t\tmetaKey=$metaKey\n" +
                "\t\t\tisKeyDown=$isKeyDown\n"
    }
}
