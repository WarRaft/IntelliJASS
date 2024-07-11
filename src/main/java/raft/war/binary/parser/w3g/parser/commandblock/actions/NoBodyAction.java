package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public record NoBodyAction(byte actionId) implements CommandBlockAction {

    public NoBodyAction {
    }

    public void parse(ByteBuffer inBuffer) {

    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer != null)
            return outBuffer;

        return ByteBuffer.allocate(0).order(ByteOrder.LITTLE_ENDIAN);
    }
}
