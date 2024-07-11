package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import raft.war.binary.parser.w3g.commandBlock.action.ujapi.UjapiSubActionBase;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class UjApiWidgetActionBase implements UjapiSubActionBase {

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

    public UjApiWidgetActionBase setEventType(byte eventType) {
        this.eventType = eventType;
        return this;
    }

    public byte getSelectionType() {
        return selectionType;
    }

    public UjApiWidgetActionBase setSelectionType(byte selectionType) {
        this.selectionType = selectionType;
        return this;
    }

    public byte getKey() {
        return key;
    }

    public UjApiWidgetActionBase setKey(byte key) {
        this.key = key;
        return this;
    }

    public byte getMetaKey() {
        return metaKey;
    }

    public UjApiWidgetActionBase setMetaKey(byte metaKey) {
        this.metaKey = metaKey;
        return this;
    }

    public float getX() {
        return x;
    }

    public UjApiWidgetActionBase setX(float x) {
        this.x = x;
        return this;
    }

    public float getY() {
        return y;
    }

    public UjApiWidgetActionBase setY(float y) {
        this.y = y;
        return this;
    }

    public float getZ() {
        return z;
    }

    public UjApiWidgetActionBase setZ(float z) {
        this.z = z;
        return this;
    }

    public long getWidgetHash() {
        return widgetHash;
    }

    public UjApiWidgetActionBase setWidgetHash(long widgetHash) {
        this.widgetHash = widgetHash;
        return this;
    }
}
