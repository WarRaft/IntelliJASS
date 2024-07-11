package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SelectGroundItemAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x1c;

    private byte unknownA;
    private long objectId;

    public void parse(ByteBuffer inBuffer) {
        unknownA = inBuffer.get();
        objectId = inBuffer.getLong();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(9).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(unknownA);
        outBuffer.putLong(objectId);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public byte getUnknownA() {
        return unknownA;
    }

    public SelectGroundItemAction setUnknownA(byte unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public long getObjectId() {
        return objectId;
    }

    public SelectGroundItemAction setObjectId(long objectId) {
        this.objectId = objectId;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SelectGroundItemAction that))
            return false;
        return unknownA == that.unknownA && objectId == that.objectId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknownA, objectId);
    }
}
