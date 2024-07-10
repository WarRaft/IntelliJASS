package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class PositionAbilityAction implements IAction {

    public static final byte ACTION_ID = 0x11;

    private short flags;
    private int itemId;
    private int unknownA;
    private int unknownB;
    private int x;
    private int y;

    @Override
    public void parse(ByteBuffer inBuffer) {
        flags = inBuffer.getShort();
        itemId = inBuffer.getInt();
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
        x = inBuffer.getInt();
        y = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(22).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort(flags);
        outBuffer.putInt(itemId);
        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);
        outBuffer.putInt(x);
        outBuffer.putInt(y);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public short getFlags() {
        return flags;
    }

    public PositionAbilityAction setFlags(short flags) {
        this.flags = flags;
        return this;
    }

    public int getItemId() {
        return itemId;
    }

    public PositionAbilityAction setItemId(int itemId) {
        this.itemId = itemId;
        return this;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public PositionAbilityAction setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public PositionAbilityAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    public int getX() {
        return x;
    }

    public PositionAbilityAction setX(int x) {
        this.x = x;
        return this;
    }

    public int getY() {
        return y;
    }

    public PositionAbilityAction setY(int y) {
        this.y = y;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof PositionAbilityAction that))
            return false;
        return flags == that.flags && itemId == that.itemId && unknownA == that.unknownA && unknownB == that.unknownB && x == that.x && y == that.y;
    }

    @Override
    public int hashCode() {
        return Objects.hash(flags, itemId, unknownA, unknownB, x, y);
    }
}
