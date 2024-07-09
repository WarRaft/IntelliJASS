package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import java.nio.ByteBuffer;

public class UjApiFrameAction implements IUjapiSubAction {

    public static final byte UJAPI_ACTION_ID = (byte) 0x13;

    private byte frameEventType;
    private byte dataType;

    private long frameHash;
    private long targetHash;
    private int frameEventId;

    private byte[] data;

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.frameEventType = inBuffer.get();
        this.dataType = inBuffer.get();
        short dataSize = inBuffer.getShort();

        this.frameHash = inBuffer.getLong();
        this.targetHash = inBuffer.getLong();
        this.frameEventId = inBuffer.getInt();

        this.data = new byte[dataSize];
        inBuffer.get(this.data);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(24 + data.length).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(frameEventType);
        outBuffer.put(dataType);
        outBuffer.putShort((short) data.length);
        outBuffer.putLong(frameHash);
        outBuffer.putLong(targetHash);
        outBuffer.putInt(frameEventId);
        outBuffer.put(data);

        return outBuffer;
    }

    @Override
    public byte getSubActionId() {
        return UJAPI_ACTION_ID;
    }

    public byte getFrameEventType() {
        return frameEventType;
    }

    public UjApiFrameAction setFrameEventType(byte frameEventType) {
        this.frameEventType = frameEventType;
        return this;
    }

    public byte getDataType() {
        return dataType;
    }

    public UjApiFrameAction setDataType(byte dataType) {
        this.dataType = dataType;
        return this;
    }

    public long getFrameHash() {
        return frameHash;
    }

    public UjApiFrameAction setFrameHash(long frameHash) {
        this.frameHash = frameHash;
        return this;
    }

    public long getTargetHash() {
        return targetHash;
    }

    public UjApiFrameAction setTargetHash(long targetHash) {
        this.targetHash = targetHash;
        return this;
    }

    public int getFrameEventId() {
        return frameEventId;
    }

    public UjApiFrameAction setFrameEventId(int frameEventId) {
        this.frameEventId = frameEventId;
        return this;
    }

    public byte[] getData() {
        return data;
    }

    public UjApiFrameAction setData(byte[] data) {
        this.data = data;
        return this;
    }
}
