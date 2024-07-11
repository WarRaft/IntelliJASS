package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;

public class ChangeSelectionAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x16;

    private byte mode;
    private long[] objects;

    public void parse(ByteBuffer inBuffer) {
        mode = inBuffer.get();
        int count = Short.toUnsignedInt(inBuffer.getShort());
        objects = new long[count];

        for (int i = 0; i < count; ++i) {
            objects[i] = inBuffer.getLong();
        }
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(3 + objects.length * 8).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(mode);
        outBuffer.putShort((short) (objects.length));

        for (long objectId : objects) {
            outBuffer.putLong(objectId);
        }

        return outBuffer;
    }

    public byte getMode() {
        return mode;
    }

    public ChangeSelectionAction setMode(byte mode) {
        this.mode = mode;
        return this;
    }

    public long[] getObjects() {
        return objects;
    }

    public ChangeSelectionAction setObjects(long[] objects) {
        this.objects = objects;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof ChangeSelectionAction that))
            return false;
        return mode == that.mode && Arrays.equals(objects, that.objects);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(mode);
        result = 31 * result + Arrays.hashCode(objects);
        return result;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }
}
