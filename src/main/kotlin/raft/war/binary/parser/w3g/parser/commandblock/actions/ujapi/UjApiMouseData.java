package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class UjApiMouseData implements IUjapiSubAction {

    public static final byte UJAPI_ACTION_ID = (byte) 0x06;


    private byte mode;

    private float screenX;
    private float screenY;

    private float worldX;
    private float worldY;
    private float worldZ;


    @Override
    public byte getSubActionId() {
        return UJAPI_ACTION_ID;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.mode = inBuffer.get();

        if((mode & 1) == 1)
        {
            this.screenX = inBuffer.getFloat();
            this.screenY = inBuffer.getFloat();
        }

        if((mode & 2) == 2)
        {
            this.worldX = inBuffer.getFloat();
            this.worldY = inBuffer.getFloat();
            this.worldZ = inBuffer.getFloat();
        }
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {

        if (outBuffer == null) {
            int size = 0;

            if ((mode & 1) == 1) {
                size += 8;
            }

            if ((mode & 2) == 2) {
                size += 12;
            }

            outBuffer = ByteBuffer.allocate(size).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(mode);

        if ((mode & 1) == 1) {
            outBuffer.putFloat(screenX);
            outBuffer.putFloat(screenY);
        }

        if ((mode & 2) == 2) {
            outBuffer.putFloat(worldX);
            outBuffer.putFloat(worldY);
            outBuffer.putFloat(worldZ);
        }

        return outBuffer;
    }

    public byte getMode() {
        return mode;
    }

    public UjApiMouseData setMode(byte mode) {
        this.mode = mode;
        return this;
    }

    public float getScreenX() {
        return screenX;
    }

    public UjApiMouseData setScreenX(float screenX) {
        this.screenX = screenX;
        return this;
    }

    public float getScreenY() {
        return screenY;
    }

    public UjApiMouseData setScreenY(float screenY) {
        this.screenY = screenY;
        return this;
    }

    public float getWorldX() {
        return worldX;
    }

    public UjApiMouseData setWorldX(float worldX) {
        this.worldX = worldX;
        return this;
    }

    public float getWorldY() {
        return worldY;
    }

    public UjApiMouseData setWorldY(float worldY) {
        this.worldY = worldY;
        return this;
    }

    public float getWorldZ() {
        return worldZ;
    }

    public UjApiMouseData setWorldZ(float worldZ) {
        this.worldZ = worldZ;
        return this;
    }
}
