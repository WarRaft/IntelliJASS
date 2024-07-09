package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class UjApiSyncVariable implements IUjapiSubAction {

    public static final byte UJAPI_ACTION_ID = (byte) 0x0A;

    private byte varType;

    private byte[] varName;
    private byte[] value;

    @Override
    public byte getSubActionId() {
        return UJAPI_ACTION_ID;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.varType = inBuffer.get();


        short nameSize = inBuffer.getShort();
        this.varName = new byte[nameSize];
        inBuffer.get(varName);

        short varSize = inBuffer.getShort();
        this.value = new byte[varSize];
        inBuffer.get(value);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(8 + varName.length + value.length).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(varType);
        outBuffer.put(new byte[3]);
        outBuffer.putShort((short) value.length);
        outBuffer.putShort((short) varName.length);
        outBuffer.put(varName);
        outBuffer.put(value);

        return outBuffer;
    }


    public byte getVarType() {
        return varType;
    }

    public UjApiSyncVariable setVarType(byte varType) {
        this.varType = varType;
        return this;
    }

    public byte[] getVarName() {
        return varName;
    }

    public UjApiSyncVariable setVarName(byte[] varName) {
        this.varName = varName;
        return this;
    }

    public byte[] getValue() {
        return value;
    }

    public UjApiSyncVariable setValue(byte[] value) {
        this.value = value;
        return this;
    }
}
