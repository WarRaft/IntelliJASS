package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SaveGameFinishedAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x07;

    private int unknown;

    public void parse(ByteBuffer inBuffer) {
        unknown = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putInt(unknown);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getUnknown() {
        return unknown;
    }

    public SaveGameFinishedAction setUnknown(int unknown) {
        this.unknown = unknown;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SaveGameFinishedAction that))
            return false;
        return unknown == that.unknown;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknown);
    }
}
