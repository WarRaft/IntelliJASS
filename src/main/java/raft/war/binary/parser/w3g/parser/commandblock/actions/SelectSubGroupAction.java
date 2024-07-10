package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SelectSubGroupAction implements IAction {

    public static final byte ACTION_ID = 0x19;

    private int itemId;
    private long objectId;

    @Override
    public void parse(ByteBuffer inBuffer) {
        itemId = inBuffer.getInt();
        objectId = inBuffer.getLong();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(12).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putInt(itemId);
        outBuffer.putLong(objectId);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getItemId() {
        return itemId;
    }

    public SelectSubGroupAction setItemId(int itemId) {
        this.itemId = itemId;
        return this;
    }

    public long getObjectId() {
        return objectId;
    }

    public SelectSubGroupAction setObjectId(long objectId) {
        this.objectId = objectId;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SelectSubGroupAction that))
            return false;
        return itemId == that.itemId && objectId == that.objectId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(itemId, objectId);
    }
}
