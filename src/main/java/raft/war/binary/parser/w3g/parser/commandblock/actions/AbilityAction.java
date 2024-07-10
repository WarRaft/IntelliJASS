package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class AbilityAction implements IAction {

    public static final byte ACTION_ID = 0x10;

    private int flags;
    private int itemId;
    private int unknownA;
    private int unknownB;

    @Override
    public void parse(ByteBuffer inBuffer) {
        flags = inBuffer.getShort();
        itemId = inBuffer.getInt();
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(14).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort((short) flags);
        outBuffer.putInt(itemId);
        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }



    public int getFlags() {
        return flags;
    }

    public AbilityAction setFlags(int flags) {
        this.flags = flags;
        return this;
    }

    public int getItemId() {
        return itemId;
    }

    public AbilityAction setItemId(int itemId) {
        this.itemId = itemId;
        return this;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public AbilityAction setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public AbilityAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof AbilityAction that))
            return false;
        return flags == that.flags && itemId == that.itemId && unknownA == that.unknownA && unknownB == that.unknownB;
    }

    @Override
    public int hashCode() {
        return Objects.hash(flags, itemId, unknownA, unknownB);
    }
}
