package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class Unknown69Action implements IAction {

    public static final byte ACTION_ID = 0x69;

    private int unknownC;
    private int unknownD;
    private int unknownA;
    private int unknownB;


    @Override
    public void parse(ByteBuffer inBuffer) {
        unknownC = inBuffer.getInt();
        unknownD = inBuffer.getInt();
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(16).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putInt(unknownC);
        outBuffer.putInt(unknownD);
        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getUnknownC() {
        return unknownC;
    }

    public Unknown69Action setUnknownC(int unknownC) {
        this.unknownC = unknownC;
        return this;
    }

    public int getUnknownD() {
        return unknownD;
    }

    public Unknown69Action setUnknownD(int unknownD) {
        this.unknownD = unknownD;
        return this;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public Unknown69Action setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public Unknown69Action setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof Unknown69Action that))
            return false;
        return unknownC == that.unknownC && unknownD == that.unknownD && unknownA == that.unknownA && unknownB == that.unknownB;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknownC, unknownD, unknownA, unknownB);
    }
}
