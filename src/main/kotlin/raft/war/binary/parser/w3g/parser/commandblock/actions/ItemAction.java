package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class ItemAction implements IAction {

    public static final byte ACTION_ID = 0x13;

    private short flags;
    private int itemId;
    private int unknownA;
    private int unknownB;
    private int targetX;
    private int targetY;
    private long objectId;
    private long itemObjectId;

    @Override
    public void parse(ByteBuffer inBuffer) {
        flags = inBuffer.getShort();
        itemId = inBuffer.getInt();
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
        targetX = inBuffer.getInt();
        targetY = inBuffer.getInt();
        objectId = inBuffer.getLong();
        itemObjectId = inBuffer.getLong();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(32).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort(flags);
        outBuffer.putInt(itemId);
        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);
        outBuffer.putInt(targetX);
        outBuffer.putInt(targetY);
        outBuffer.putLong(objectId);
        outBuffer.putLong(itemObjectId);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public short getFlags() {
        return flags;
    }

    public ItemAction setFlags(short flags) {
        this.flags = flags;
        return this;
    }

    public int getItemId() {
        return itemId;
    }

    public ItemAction setItemId(int itemId) {
        this.itemId = itemId;
        return this;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public ItemAction setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public ItemAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    public int getTargetX() {
        return targetX;
    }

    public ItemAction setTargetX(int targetX) {
        this.targetX = targetX;
        return this;
    }

    public int getTargetY() {
        return targetY;
    }

    public ItemAction setTargetY(int targetY) {
        this.targetY = targetY;
        return this;
    }

    public long getObjectId() {
        return objectId;
    }

    public ItemAction setObjectId(long objectId) {
        this.objectId = objectId;
        return this;
    }

    public long getItemObjectId() {
        return itemObjectId;
    }

    public ItemAction setItemObjectId(long itemObjectId) {
        this.itemObjectId = itemObjectId;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof ItemAction that))
            return false;
        return flags == that.flags && itemId == that.itemId && unknownA == that.unknownA && unknownB == that.unknownB && targetX == that.targetX && targetY == that.targetY && objectId == that.objectId && itemObjectId == that.itemObjectId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(flags, itemId, unknownA, unknownB, targetX, targetY, objectId, itemObjectId);
    }
}
