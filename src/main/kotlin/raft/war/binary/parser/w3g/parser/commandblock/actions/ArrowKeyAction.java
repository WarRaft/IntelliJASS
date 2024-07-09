package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.util.Objects;

public class ArrowKeyAction implements IAction {

    public static final byte ACTION_ID = 0x75;
    private int arrowKey;

    @Override
    public void parse(ByteBuffer inBuffer) {
        arrowKey = inBuffer.get() & 0xFF;
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(1).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put((byte) arrowKey);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return 0;
    }

    public int getArrowKey() {
        return arrowKey;
    }

    public ArrowKeyAction setArrowKey(int arrowKey) {
        this.arrowKey = arrowKey;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof ArrowKeyAction that))
            return false;
        return arrowKey == that.arrowKey;
    }

    @Override
    public int hashCode() {
        return Objects.hash(arrowKey);
    }
}
