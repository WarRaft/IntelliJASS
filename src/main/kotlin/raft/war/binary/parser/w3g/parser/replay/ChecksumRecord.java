package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

public class ChecksumRecord implements IRecord {

    public static final  int TYPE = 0x22;

    private int checksum;

    private byte[] unknown;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        byte followingLength = inBuffer.get();

        checksum = inBuffer.getInt();

        unknown = new byte[followingLength - 4];
        inBuffer.get(unknown);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        int unknownLength = unknown.length; // Calculate the length of the 'unknown' data

        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(5 + unknownLength).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put((byte) (4 + unknownLength));
        outBuffer.putInt(checksum);
        outBuffer.put(unknown);

        // You can return the ByteBuffer or further process it as needed
        return outBuffer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        ChecksumRecord that = (ChecksumRecord) o;
        return checksum == that.checksum && Arrays.equals(unknown, that.unknown);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(checksum);
        result = 31 * result + Arrays.hashCode(unknown);
        return result;
    }

    public int getChecksum() {
        return checksum;
    }

    public ChecksumRecord setChecksum(int checksum) {
        this.checksum = checksum;
        return this;
    }

    public byte[] getUnknown() {
        return unknown;
    }

    public ChecksumRecord setUnknown(byte[] unknown) {
        this.unknown = unknown;
        return this;
    }
}
