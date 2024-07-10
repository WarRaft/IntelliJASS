package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SinglePlayerCheatTimeAction implements IAction {

    private final byte type;
    private float count;

    public SinglePlayerCheatTimeAction(byte type) {
        this.type = type;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        count = inBuffer.getFloat();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(4);
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putFloat(count);
        return outBuffer;
    }

    @Override
    public byte actionId() {
        return type;
    }


    public float getCount() {
        return count;
    }

    public SinglePlayerCheatTimeAction setCount(float count) {
        this.count = count;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SinglePlayerCheatTimeAction that))
            return false;
        return type == that.type && Float.compare(count, that.count) == 0;
    }

    @Override
    public int hashCode() {
        return Objects.hash(type, count);
    }
}
