package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class PositionAndObjectAbilityAction implements IAction {

    public static final byte ACTION_ID = 0x12;

    private short flags;
    private int itemId;
    private int unknownA;
    private int unknownB;
    private int targetX;
    private int targetY;
    private int objectId1;
    private int objectId2;

    @Override
    public void parse(ByteBuffer inBuffer) {
        flags = inBuffer.getShort();
        itemId = inBuffer.getInt();
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
        targetX = inBuffer.getInt();
        targetY = inBuffer.getInt();
        objectId1 = inBuffer.getInt();
        objectId2 = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(30).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort(flags);
        outBuffer.putInt(itemId);
        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);
        outBuffer.putInt(targetX);
        outBuffer.putInt(targetY);
        outBuffer.putInt(objectId1);
        outBuffer.putInt(objectId2);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public short getFlags() {
        return flags;
    }

    public PositionAndObjectAbilityAction setFlags(short flags) {
        this.flags = flags;
        return this;
    }

    public int getItemId() {
        return itemId;
    }

    public PositionAndObjectAbilityAction setItemId(int itemId) {
        this.itemId = itemId;
        return this;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public PositionAndObjectAbilityAction setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public PositionAndObjectAbilityAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    public int getTargetX() {
        return targetX;
    }

    public PositionAndObjectAbilityAction setTargetX(int targetX) {
        this.targetX = targetX;
        return this;
    }

    public int getTargetY() {
        return targetY;
    }

    public PositionAndObjectAbilityAction setTargetY(int targetY) {
        this.targetY = targetY;
        return this;
    }

    public int getObjectId1() {
        return objectId1;
    }

    public PositionAndObjectAbilityAction setObjectId1(int objectId1) {
        this.objectId1 = objectId1;
        return this;
    }

    public int getObjectId2() {
        return objectId2;
    }

    public PositionAndObjectAbilityAction setObjectId2(int objectId2) {
        this.objectId2 = objectId2;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof PositionAndObjectAbilityAction that))
            return false;
        return flags == that.flags && itemId == that.itemId && unknownA == that.unknownA && unknownB == that.unknownB && targetX == that.targetX && targetY == that.targetY && objectId1 == that.objectId1 && objectId2 == that.objectId2;
    }

    @Override
    public int hashCode() {
        return Objects.hash(flags, itemId, unknownA, unknownB, targetX, targetY, objectId1, objectId2);
    }
}
