package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class Unknown6aAction implements IAction {

    public static final byte ACTION_ID = 0x6a;

    private int unknownA;
    private int unknownB;
    private int unknownC;
    private int unknownD;

    @Override
    public void parse(ByteBuffer inBuffer) {
        unknownA = inBuffer.getInt();
        unknownB = inBuffer.getInt();
        unknownC = inBuffer.getInt();
        unknownD = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(16).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);
        outBuffer.putInt(unknownC);
        outBuffer.putInt(unknownD);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public Unknown6aAction setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public Unknown6aAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    public int getUnknownC() {
        return unknownC;
    }

    public Unknown6aAction setUnknownC(int unknownC) {
        this.unknownC = unknownC;
        return this;
    }

    public int getUnknownD() {
        return unknownD;
    }

    public Unknown6aAction setUnknownD(int unknownD) {
        this.unknownD = unknownD;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof Unknown6aAction that))
            return false;
        return unknownA == that.unknownA && unknownB == that.unknownB && unknownC == that.unknownC && unknownD == that.unknownD;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknownA, unknownB, unknownC, unknownD);
    }
}
