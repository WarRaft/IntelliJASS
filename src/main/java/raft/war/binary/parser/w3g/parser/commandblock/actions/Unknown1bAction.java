package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class Unknown1bAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x1b;

    private byte unknownA;
    private int unknownB;
    private int unknownC;

    public void parse(ByteBuffer inBuffer) {
        unknownA = inBuffer.get();
        unknownB = inBuffer.getInt();
        unknownC = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(9).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(unknownA);
        outBuffer.putInt(unknownB);
        outBuffer.putInt(unknownC);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public byte getUnknownA() {
        return unknownA;
    }

    public Unknown1bAction setUnknownA(byte unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public Unknown1bAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    public int getUnknownC() {
        return unknownC;
    }

    public Unknown1bAction setUnknownC(int unknownC) {
        this.unknownC = unknownC;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof Unknown1bAction that))
            return false;
        return unknownA == that.unknownA && unknownB == that.unknownB && unknownC == that.unknownC;
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknownA, unknownB, unknownC);
    }
}
