package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;
import raft.war.binary.parser.w3g.parser.utils.PlayerInfo;

import java.nio.ByteBuffer;

public class PlayerRecord extends PlayerInfo implements IRecord {

    public static final int TYPE = 0x16;
    private int unknown;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        super.parse(inBuffer);

        unknown = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        ByteBuffer playerInfoBytes = super.assembly(null).flip();

        if (outBuffer == null)
            outBuffer = ByteBuffer.allocate(playerInfoBytes.remaining() + 4);

        outBuffer.put(playerInfoBytes);
        outBuffer.putInt(unknown);

        return outBuffer;
    }

    public int getUnknown() {
        return unknown;
    }

    public PlayerRecord setUnknown(int unknown) {
        this.unknown = unknown;
        return this;
    }


}
