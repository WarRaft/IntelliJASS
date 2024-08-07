package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class AllyOptionsAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x50;
    private int slotId;
    private int flags;

    public void parse(ByteBuffer inBuffer) {
        this.slotId = inBuffer.get() & 0xFF;
        this.flags = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(5).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(ACTION_ID);
        outBuffer.put((byte) slotId);
        outBuffer.putInt(flags);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }
}
