package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class CancelHeroRevivalAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x1d;
    private long unitId;

    public void parse(ByteBuffer inBuffer) {
        unitId = inBuffer.getLong();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putLong(unitId);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public long getUnitId() {
        return unitId;
    }

    public CancelHeroRevivalAction setUnitId(long unitId) {
        this.unitId = unitId;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof CancelHeroRevivalAction that))
            return false;
        return unitId == that.unitId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unitId);
    }
}
