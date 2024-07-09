package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public record NoBodyAction(byte actionId) implements IAction {

    public NoBodyAction {
    }

    @Override
    public void parse(ByteBuffer inBuffer) {

    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer != null)
            return outBuffer;

        return ByteBuffer.allocate(0).order(ByteOrder.LITTLE_ENDIAN);
    }
}
