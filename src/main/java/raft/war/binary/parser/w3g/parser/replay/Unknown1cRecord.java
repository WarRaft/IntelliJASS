package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class Unknown1cRecord implements IRecord {

    public static final int TYPE = 0x1C;

    private int unknown;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        unknown = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null)
            outBuffer = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);

        outBuffer.putInt(unknown);

        return outBuffer;
    }

    public int getUnknown() {
        return unknown;
    }

    public Unknown1cRecord setUnknown(int unknown) {
        this.unknown = unknown;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        Unknown1cRecord that = (Unknown1cRecord) o;
        return unknown == that.unknown;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknown);
    }
}
