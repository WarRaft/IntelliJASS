package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import java.nio.ByteBuffer;

public class UjApiKeyAction implements IUjapiSubAction {

    private final byte subActionId;

    private short key;

    private byte metaKey;

    private boolean isKeyDown;

    public UjApiKeyAction(byte subActionId) {
        this.subActionId = subActionId;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.key = inBuffer.getShort();
        this.metaKey = inBuffer.get();
        this.isKeyDown = inBuffer.get() > 0;
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(4).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort(key);
        outBuffer.put(metaKey);
        outBuffer.put((byte) (isKeyDown ? 1 : 0));

        return outBuffer;
    }

    public short getKey() {
        return key;
    }

    public UjApiKeyAction setKey(short key) {
        this.key = key;
        return this;
    }

    public byte getMetaKey() {
        return metaKey;
    }

    public UjApiKeyAction setMetaKey(byte metaKey) {
        this.metaKey = metaKey;
        return this;
    }

    public boolean isKeyDown() {
        return isKeyDown;
    }

    public UjApiKeyAction setKeyDown(boolean keyDown) {
        isKeyDown = keyDown;
        return this;
    }

    @Override
    public byte getSubActionId() {
        return subActionId;
    }
}
