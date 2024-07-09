package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class MinimapPingAction implements IAction {

    public static final byte ACTION_ID = 0x68;

    private int x;
    private int y;
    private int unknown;

    @Override
    public void parse(ByteBuffer inBuffer) {
        x = inBuffer.getInt();
        y = inBuffer.getInt();
        unknown = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(12).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putInt(x);
        outBuffer.putInt(y);
        outBuffer.putInt(unknown);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getX() {
        return x;
    }

    public MinimapPingAction setX(int x) {
        this.x = x;
        return this;
    }

    public int getY() {
        return y;
    }

    public MinimapPingAction setY(int y) {
        this.y = y;
        return this;
    }

    public int getUnknown() {
        return unknown;
    }

    public MinimapPingAction setUnknown(int unknown) {
        this.unknown = unknown;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof MinimapPingAction that))
            return false;
        return x == that.x && y == that.y && unknown == that.unknown;
    }

    @Override
    public int hashCode() {
        return Objects.hash(x, y, unknown);
    }
}
