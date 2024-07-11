package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

public class AbilityTwoTargetTwoItemAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x14;

    private int flags;
    private int itemIdA;
    private int unknownA;
    private int unknownB;
    private int targetAX;
    private int targetAY;
    private int itemIdB;
    private byte[] unknownC;
    private int targetBX;
    private int targetBY;

    public void parse(ByteBuffer inBuffer) {
        flags = inBuffer.getShort();
        itemIdA = inBuffer.getInt();
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
        targetAX = inBuffer.getInt();
        targetAY = inBuffer.getInt();
        itemIdB = inBuffer.getInt();
        unknownC = new byte[9];
        inBuffer.get(unknownC);
        targetBX = inBuffer.getInt();
        targetBY = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(43).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort((short) flags);
        outBuffer.putInt(itemIdA);
        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);
        outBuffer.putInt(targetAX);
        outBuffer.putInt(targetAY);
        outBuffer.putInt(itemIdB);
        outBuffer.put(unknownC);
        outBuffer.putInt(targetBX);
        outBuffer.putInt(targetBY);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getFlags() {
        return flags;
    }

    public AbilityTwoTargetTwoItemAction setFlags(int flags) {
        this.flags = flags;
        return this;
    }

    public int getItemIdA() {
        return itemIdA;
    }

    public AbilityTwoTargetTwoItemAction setItemIdA(int itemIdA) {
        this.itemIdA = itemIdA;
        return this;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public AbilityTwoTargetTwoItemAction setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public AbilityTwoTargetTwoItemAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    public int getTargetAX() {
        return targetAX;
    }

    public AbilityTwoTargetTwoItemAction setTargetAX(int targetAX) {
        this.targetAX = targetAX;
        return this;
    }

    public int getTargetAY() {
        return targetAY;
    }

    public AbilityTwoTargetTwoItemAction setTargetAY(int targetAY) {
        this.targetAY = targetAY;
        return this;
    }

    public int getItemIdB() {
        return itemIdB;
    }

    public AbilityTwoTargetTwoItemAction setItemIdB(int itemIdB) {
        this.itemIdB = itemIdB;
        return this;
    }

    public byte[] getUnknownC() {
        return unknownC;
    }

    public AbilityTwoTargetTwoItemAction setUnknownC(byte[] unknownC) {
        this.unknownC = unknownC;
        return this;
    }

    public int getTargetBX() {
        return targetBX;
    }

    public AbilityTwoTargetTwoItemAction setTargetBX(int targetBX) {
        this.targetBX = targetBX;
        return this;
    }

    public int getTargetBY() {
        return targetBY;
    }

    public AbilityTwoTargetTwoItemAction setTargetBY(int targetBY) {
        this.targetBY = targetBY;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof AbilityTwoTargetTwoItemAction that))
            return false;
        return flags == that.flags && itemIdA == that.itemIdA && unknownA == that.unknownA && unknownB == that.unknownB && targetAX == that.targetAX && targetAY == that.targetAY && itemIdB == that.itemIdB && targetBX == that.targetBX && targetBY == that.targetBY && Arrays.equals(
                unknownC, that.unknownC);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(flags, itemIdA, unknownA, unknownB, targetAX, targetAY, itemIdB, targetBX, targetBY);
        result = 31 * result + Arrays.hashCode(unknownC);
        return result;
    }
}
