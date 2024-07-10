package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

public class TimeSlotRecord implements IRecord {

    public static final int TYPE = 0x1F;

    private int timeIncrement;
    private byte[] rawData;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        int length = inBuffer.getShort() - 2;
        timeIncrement = inBuffer.getShort() & 0xFFFF;
        rawData = new byte[length];
        inBuffer.get(rawData);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        int dataSize = 4 + rawData.length;

        if(outBuffer == null)
            outBuffer = ByteBuffer.allocate(dataSize).order(ByteOrder.LITTLE_ENDIAN);

        outBuffer.putShort((short) (rawData.length + 2));
        outBuffer.putShort((short) timeIncrement);
        outBuffer.put(rawData);

        return outBuffer;
    }

    public int getTimeIncrement() {
        return timeIncrement;
    }

    public TimeSlotRecord setTimeIncrement(int timeIncrement) {
        this.timeIncrement = timeIncrement;
        return this;
    }

    public byte[] getRawData() {
        return rawData;
    }

    public TimeSlotRecord setRawData(byte[] rawData) {
        this.rawData = rawData;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        TimeSlotRecord that = (TimeSlotRecord) o;
        return timeIncrement == that.timeIncrement && Arrays.equals(rawData, that.rawData);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(timeIncrement);
        result = 31 * result + Arrays.hashCode(rawData);
        return result;
    }
}
