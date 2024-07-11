package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SetGameSpeedAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x03;

    private byte speed;

    public void parse(ByteBuffer inBuffer) {
        speed = inBuffer.get();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(1).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(speed);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public byte getSpeed() {
        return speed;
    }

    public SetGameSpeedAction setSpeed(byte speed) {
        this.speed = speed;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SetGameSpeedAction that))
            return false;
        return speed == that.speed;
    }

    @Override
    public int hashCode() {
        return Objects.hash(speed);
    }
}
