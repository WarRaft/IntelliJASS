package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class ResourceTransferAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x51;

    private byte slotId;
    private int gold;
    private int lumber;

    public void parse(ByteBuffer inBuffer) {
        slotId = inBuffer.get();
        gold = inBuffer.getInt();
        lumber = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(9).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(slotId);
        outBuffer.putInt(gold);
        outBuffer.putInt(lumber);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public byte getSlotId() {
        return slotId;
    }

    public ResourceTransferAction setSlotId(byte slotId) {
        this.slotId = slotId;
        return this;
    }

    public int getGold() {
        return gold;
    }

    public ResourceTransferAction setGold(int gold) {
        this.gold = gold;
        return this;
    }

    public int getLumber() {
        return lumber;
    }

    public ResourceTransferAction setLumber(int lumber) {
        this.lumber = lumber;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof ResourceTransferAction that))
            return false;
        return slotId == that.slotId && gold == that.gold && lumber == that.lumber;
    }

    @Override
    public int hashCode() {
        return Objects.hash(slotId, gold, lumber);
    }
}
