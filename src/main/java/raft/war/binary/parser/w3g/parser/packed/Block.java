package raft.war.binary.parser.w3g.parser.packed;


import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class Block  {

    private int decompressedBlockSize;

    private byte[] data;

    private int dataLength;

    private boolean isReforged;

    public Block(boolean isReforged) {
        this.isReforged = isReforged;
    }

    public Block() {
    }

    public int getHeaderSize() {
        return isReforged ? 12 : 8;
    }

    public void parseHeader(ByteBuffer inBuffer) {
        dataLength = inBuffer.getShort() & 0xFFFF;

        if (isReforged) {
            inBuffer.position(inBuffer.position() + 2);
        }

        decompressedBlockSize = inBuffer.getShort() & 0xFFFF;

        if (isReforged) {
            inBuffer.position(inBuffer.position() + 6);
        } else {
            inBuffer.position(inBuffer.position() + 4);
        }
    }

    public void parsePayload(ByteBuffer inBuffer) {
        data = new byte[dataLength];
        inBuffer.get(data);
    }

    public void parse(ByteBuffer inBuffer) {
        parseHeader(inBuffer);
        parsePayload(inBuffer);
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        int bufferCapacity = data.length + 8 + (isReforged ? 4 : 0);
        ByteBuffer byteBuffer = outBuffer != null ? outBuffer : ByteBuffer.allocate(bufferCapacity).order(ByteOrder.LITTLE_ENDIAN);

        byteBuffer.putShort((short) data.length);

        if (isReforged) {
            byteBuffer.position(byteBuffer.position() + 2);
        }

        byteBuffer.putShort((short) decompressedBlockSize);

        if (isReforged) {
            byteBuffer.position(byteBuffer.position() + 6);
        } else {
            byteBuffer.position(byteBuffer.position() + 4);
        }

        byteBuffer.put(data);

        return byteBuffer;
    }

    public int getDataLength() {
        return dataLength;
    }

    public byte[] getData() {
        return data;
    }

    public Block setData(byte[] data) {
        this.data = data;
        return this;
    }

    public boolean isReforged() {
        return isReforged;
    }

    public Block setReforged(boolean reforged) {
        isReforged = reforged;
        return this;
    }

    public int getDecompressedBlockSize() {
        return decompressedBlockSize;
    }
}
