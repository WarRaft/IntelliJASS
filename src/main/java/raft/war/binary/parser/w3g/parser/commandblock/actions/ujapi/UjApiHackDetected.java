package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import raft.war.binary.parser.w3g.commandBlock.action.ujapi.UjapiSubActionBase;

import java.nio.ByteBuffer;

public class UjApiHackDetected implements UjapiSubActionBase {

    public static final byte UJAPI_ACTION_ID = (byte) 0x14;

    private short id;
    private short type;
    private byte mode;
    private int line;

    private long playerHash;

    public void parse(ByteBuffer inBuffer) {
        this.id = inBuffer.getShort();
        this.type = inBuffer.getShort();
        this.mode = inBuffer.get();
        this.line = inBuffer.getInt();

        this.playerHash = inBuffer.getLong();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(17).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putShort(id);
        outBuffer.putShort(type);
        outBuffer.put(mode);
        outBuffer.putInt(line);
        outBuffer.putLong(playerHash);

        return outBuffer;

    }

    @Override
    public byte getSubActionId() {
        return UJAPI_ACTION_ID;
    }

    public short getId() {
        return id;
    }

    public UjApiHackDetected setId(short id) {
        this.id = id;
        return this;
    }

    public short getType() {
        return type;
    }

    public UjApiHackDetected setType(short type) {
        this.type = type;
        return this;
    }

    public byte getMode() {
        return mode;
    }

    public UjApiHackDetected setMode(byte mode) {
        this.mode = mode;
        return this;
    }

    public int getLine() {
        return line;
    }

    public UjApiHackDetected setLine(int line) {
        this.line = line;
        return this;
    }

    public long getPlayerHash() {
        return playerHash;
    }

    public UjApiHackDetected setPlayerHash(long playerHash) {
        this.playerHash = playerHash;
        return this;
    }
}
