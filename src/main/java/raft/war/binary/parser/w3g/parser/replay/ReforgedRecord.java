package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

public class ReforgedRecord  implements IRecord {

    public static final int TYPE = 0x39;

    private int subType;
    private byte[] unknown;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        subType = inBuffer.get() & 0xFF;
        long unknownLength = Integer.toUnsignedLong(inBuffer.getInt());
        unknown = new byte[(int) unknownLength];
        inBuffer.get(this.unknown);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        int totalLength = 3 + unknown.length;

        ByteBuffer resultBuffer;
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(totalLength).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put((byte) subType);
        outBuffer.putInt(unknown.length);
        outBuffer.put(unknown);

        return outBuffer;
    }

    public int getSubType() {
        return subType;
    }

    public ReforgedRecord setSubType(int subType) {
        this.subType = subType;
        return this;
    }

    public byte[] getUnknown() {
        return unknown;
    }

    public ReforgedRecord setUnknown(byte[] unknown) {
        this.unknown = unknown;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        ReforgedRecord that = (ReforgedRecord) o;
        return subType == that.subType && Arrays.equals(unknown, that.unknown);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(subType);
        result = 31 * result + Arrays.hashCode(unknown);
        return result;
    }
}
