package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import raft.war.binary.parser.w3g.commandBlock.action.ujapi.UjapiSubActionBase;

import java.nio.ByteBuffer;

public class UjApiSyncPrefixData implements UjapiSubActionBase {

    public static final byte UJAPI_ACTION_ID = (byte) 0x0C;

    private byte[] prefixBytes;
    private byte[] dataBytes;

    @Override
    public byte getSubActionId() {
        return UJAPI_ACTION_ID;
    }

    public void parse(ByteBuffer inBuffer) {
        short prefixSize = inBuffer.getShort();
        this.prefixBytes = new byte[prefixSize];
        inBuffer.get(prefixBytes);

        short dataSize = inBuffer.getShort();
        this.dataBytes = new byte[dataSize];
        inBuffer.get(dataBytes);
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(4 + prefixBytes.length + dataBytes.length).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort((short) prefixBytes.length);
        outBuffer.putShort((short) dataBytes.length);

        outBuffer.put(this.prefixBytes);
        outBuffer.put(this.dataBytes);

        return outBuffer;
    }

    public byte[] getPrefixBytes() {
        return prefixBytes;
    }

    public UjApiSyncPrefixData setPrefixBytes(byte[] prefixBytes) {
        this.prefixBytes = prefixBytes;
        return this;
    }

    public byte[] getDataBytes() {
        return dataBytes;
    }

    public UjApiSyncPrefixData setDataBytes(byte[] dataBytes) {
        this.dataBytes = dataBytes;
        return this;
    }
}
