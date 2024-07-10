package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SinglePlayerCheatResourceAction implements IAction {

    private final byte type;
    private byte unknown;
    private int count;

    public SinglePlayerCheatResourceAction(byte type) {
        this.type = type;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        unknown = inBuffer.get();
        count = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(5);
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(unknown);
        outBuffer.putInt(count);
        return outBuffer;
    }

    @Override
    public byte actionId() {
        return type;
    }

    public byte getUnknown() {
        return unknown;
    }

    public SinglePlayerCheatResourceAction setUnknown(byte unknown) {
        this.unknown = unknown;
        return this;
    }

    public int getCount() {
        return count;
    }

    public SinglePlayerCheatResourceAction setCount(int count) {
        this.count = count;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SinglePlayerCheatResourceAction that))
            return false;
        return type == that.type && unknown == that.unknown && count == that.count;
    }

    @Override
    public int hashCode() {
        return Objects.hash(type, unknown, count);
    }
}
