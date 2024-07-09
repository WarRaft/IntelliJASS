package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SelectGroupHotkeyAction implements IAction {

    public static final byte ACTION_ID = 0x18;

    private byte group;
    private byte unknown;

    @Override
    public void parse(ByteBuffer inBuffer) {
        group = inBuffer.get();
        unknown = inBuffer.get();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(group);
        outBuffer.put(unknown);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public byte getGroup() {
        return group;
    }

    public SelectGroupHotkeyAction setGroup(byte group) {
        this.group = group;
        return this;
    }

    public byte getUnknown() {
        return unknown;
    }

    public SelectGroupHotkeyAction setUnknown(byte unknown) {
        this.unknown = unknown;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SelectGroupHotkeyAction that))
            return false;
        return group == that.group && unknown == that.unknown;
    }

    @Override
    public int hashCode() {
        return Objects.hash(group, unknown);
    }
}
