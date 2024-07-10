package raft.war.binary.parser.w3g.parser.packed;

import raft.war.binary.parser.w3g.parser.IBinaryStructure;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class Header implements IBinaryStructure {
    private int firstBlockOffset;
    private int compressedSize;
    private int headerVersion;
    private int decompressedSize;
    private int blockCount;


    @Override
    public void parse(ByteBuffer inBuffer) {
        firstBlockOffset = inBuffer.getInt();
        compressedSize = inBuffer.getInt();
        headerVersion = inBuffer.getInt();
        decompressedSize = inBuffer.getInt();
        blockCount = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        ByteBuffer buffer = outBuffer == null ? ByteBuffer.allocate(20).order(ByteOrder.LITTLE_ENDIAN) : outBuffer;

        buffer.putInt(firstBlockOffset);
        buffer.putInt(compressedSize);
        buffer.putInt(headerVersion);
        buffer.putInt(decompressedSize);
        buffer.putInt(blockCount);

        return buffer;
    }

    public int getFirstBlockOffset() {
        return firstBlockOffset;
    }

    public Header setFirstBlockOffset(int firstBlockOffset) {
        this.firstBlockOffset = firstBlockOffset;
        return this;
    }

    public int getCompressedSize() {
        return compressedSize;
    }

    public Header setCompressedSize(int compressedSize) {
        this.compressedSize = compressedSize;
        return this;
    }

    public int getHeaderVersion() {
        return headerVersion;
    }

    public Header setHeaderVersion(int headerVersion) {
        this.headerVersion = headerVersion;
        return this;
    }

    public int getDecompressedSize() {
        return decompressedSize;
    }

    public Header setDecompressedSize(int decompressedSize) {
        this.decompressedSize = decompressedSize;
        return this;
    }

    public int getBlockCount() {
        return blockCount;
    }

    public Header setBlockCount(int blockCount) {
        this.blockCount = blockCount;
        return this;
    }
}
