package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;

public class AssignGroupHotkeyAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x17;

    private byte group;
    private long[] objects;

    public void parse(ByteBuffer inBuffer) {
        group = inBuffer.get();
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

        outBuffer.put(group);
        outBuffer.putShort((short) (objects.length));

        for (long objectId : objects) {
            outBuffer.putLong(objectId);
        }

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public byte getGroup() {
        return group;
    }

    public AssignGroupHotkeyAction setGroup(byte group) {
        this.group = group;
        return this;
    }

    public long[] getObjects() {
        return objects;
    }

    public AssignGroupHotkeyAction setObjects(long[] objects) {
        this.objects = objects;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof AssignGroupHotkeyAction that))
            return false;
        return group == that.group && Arrays.equals(objects, that.objects);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(group);
        result = 31 * result + Arrays.hashCode(objects);
        return result;
    }
}
