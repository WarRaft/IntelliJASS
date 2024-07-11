package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import raft.war.binary.parser.w3g.commandBlock.action.ujapi.UjapiSubActionBase;

import java.nio.ByteBuffer;

public class UjApiFrameActionBase implements UjapiSubActionBase {

    public static final byte UJAPI_ACTION_ID = (byte) 0x13;

    private byte frameEventType;
    private byte dataType;

    private long frameHash;
    private long targetHash;
    private int frameEventId;

    private byte[] data;

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

    public UjApiFrameActionBase setFrameEventType(byte frameEventType) {
        this.frameEventType = frameEventType;
        return this;
    }

    public byte getDataType() {
        return dataType;
    }

    public UjApiFrameActionBase setDataType(byte dataType) {
        this.dataType = dataType;
        return this;
    }

    public long getFrameHash() {
        return frameHash;
    }

    public UjApiFrameActionBase setFrameHash(long frameHash) {
        this.frameHash = frameHash;
        return this;
    }

    public long getTargetHash() {
        return targetHash;
    }

    public UjApiFrameActionBase setTargetHash(long targetHash) {
        this.targetHash = targetHash;
        return this;
    }

    public int getFrameEventId() {
        return frameEventId;
    }

    public UjApiFrameActionBase setFrameEventId(int frameEventId) {
        this.frameEventId = frameEventId;
        return this;
    }

    public byte[] getData() {
        return data;
    }

    public UjApiFrameActionBase setData(byte[] data) {
        this.data = data;
        return this;
    }
}
