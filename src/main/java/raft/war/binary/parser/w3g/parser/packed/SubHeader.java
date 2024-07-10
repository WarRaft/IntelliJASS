package raft.war.binary.parser.w3g.parser.packed;

import raft.war.binary.parser.w3g.parser.IBinaryStructure;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class SubHeader implements IBinaryStructure {
    private int productId;
    private int version;
    private int buildNumber;
    private int flags;
    private int lengthMillis;
    private byte[] crc32;

    @Override
    public void parse(ByteBuffer inBuffer) {
        productId = inBuffer.getInt();
        version = inBuffer.getInt();
        buildNumber = inBuffer.getShort();
        flags = inBuffer.getShort();
        lengthMillis = inBuffer.getInt();
        crc32 = new byte[4];
        inBuffer.get(crc32);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        ByteBuffer buffer = outBuffer == null ? ByteBuffer.allocate(20).order(ByteOrder.LITTLE_ENDIAN) : outBuffer;

        buffer.putInt(productId);
        buffer.putInt(version);
        buffer.putShort((short) buildNumber);
        buffer.putShort((short) flags);
        buffer.putInt(lengthMillis);
        buffer.put(crc32);

        return buffer;
    }

    public int getProductId() {
        return productId;
    }

    public SubHeader setProductId(int productId) {
        this.productId = productId;
        return this;
    }

    public int getVersion() {
        return version;
    }

    public SubHeader setVersion(int version) {
        this.version = version;
        return this;
    }

    public int getBuildNumber() {
        return buildNumber;
    }

    public SubHeader setBuildNumber(int buildNumber) {
        this.buildNumber = buildNumber;
        return this;
    }

    public int getFlags() {
        return flags;
    }

    public SubHeader setFlags(int flags) {
        this.flags = flags;
        return this;
    }

    public int getLengthMillis() {
        return lengthMillis;
    }

    public SubHeader setLengthMillis(int lengthMillis) {
        this.lengthMillis = lengthMillis;
        return this;
    }

    public byte[] getCrc32() {
        return crc32;
    }

    public SubHeader setCrc32(byte[] crc32) {
        this.crc32 = crc32;
        return this;
    }
}
