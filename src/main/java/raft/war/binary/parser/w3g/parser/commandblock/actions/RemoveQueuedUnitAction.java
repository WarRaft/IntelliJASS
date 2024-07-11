package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class RemoveQueuedUnitAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x1e;

    private byte slot;
    private int itemId;


    public void parse(ByteBuffer inBuffer) {
        slot = inBuffer.get();
        itemId = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(5).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(slot);
        outBuffer.putInt(itemId);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public byte getSlot() {
        return slot;
    }

    public RemoveQueuedUnitAction setSlot(byte slot) {
        this.slot = slot;
        return this;
    }

    public int getItemId() {
        return itemId;
    }

    public RemoveQueuedUnitAction setItemId(int itemId) {
        this.itemId = itemId;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof RemoveQueuedUnitAction that))
            return false;
        return slot == that.slot && itemId == that.itemId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(slot, itemId);
    }
}
