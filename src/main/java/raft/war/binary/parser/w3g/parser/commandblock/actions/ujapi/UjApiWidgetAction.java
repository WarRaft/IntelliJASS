package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class UjApiWidgetAction implements IUjapiSubAction {

    public static final byte UJAPI_ACTION_ID = (byte) 0x12;

    private byte eventType;
    private byte selectionType;
    private byte key;
    private byte metaKey;

    private float x;
    private float y;
    private float z;

    private long widgetHash;

    @Override
    public byte getSubActionId() {
        return UJAPI_ACTION_ID;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.eventType = inBuffer.get();
        this.selectionType = inBuffer.get();
        this.key = inBuffer.get();
        this.metaKey = inBuffer.get();

        this.x = inBuffer.getFloat();
        this.y = inBuffer.getFloat();
        this.z = inBuffer.getFloat();

        this.widgetHash = inBuffer.getLong();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {

        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(eventType);
        outBuffer.put(selectionType);
        outBuffer.put(key);
        outBuffer.put(metaKey);
        outBuffer.putFloat(x);
        outBuffer.putFloat(y);
        outBuffer.putFloat(z);
        outBuffer.putLong(widgetHash);

        return outBuffer;
    }

    public byte getEventType() {
        return eventType;
    }

    public UjApiWidgetAction setEventType(byte eventType) {
        this.eventType = eventType;
        return this;
    }

    public byte getSelectionType() {
        return selectionType;
    }

    public UjApiWidgetAction setSelectionType(byte selectionType) {
        this.selectionType = selectionType;
        return this;
    }

    public byte getKey() {
        return key;
    }

    public UjApiWidgetAction setKey(byte key) {
        this.key = key;
        return this;
    }

    public byte getMetaKey() {
        return metaKey;
    }

    public UjApiWidgetAction setMetaKey(byte metaKey) {
        this.metaKey = metaKey;
        return this;
    }

    public float getX() {
        return x;
    }

    public UjApiWidgetAction setX(float x) {
        this.x = x;
        return this;
    }

    public float getY() {
        return y;
    }

    public UjApiWidgetAction setY(float y) {
        this.y = y;
        return this;
    }

    public float getZ() {
        return z;
    }

    public UjApiWidgetAction setZ(float z) {
        this.z = z;
        return this;
    }

    public long getWidgetHash() {
        return widgetHash;
    }

    public UjApiWidgetAction setWidgetHash(long widgetHash) {
        this.widgetHash = widgetHash;
        return this;
    }
}
