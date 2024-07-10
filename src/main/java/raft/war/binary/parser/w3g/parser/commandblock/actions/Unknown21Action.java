package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class Unknown21Action implements IAction {

    public static final byte ACTION_ID = 0x21;

    private int unknownA;
    private int unknownB;

    @Override
    public void parse(ByteBuffer inBuffer) {
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public Unknown21Action setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public Unknown21Action setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof Unknown21Action that))
            return false;
        return unknownA == that.unknownA && unknownB == that.unknownB;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknownA, unknownB);
    }
}
