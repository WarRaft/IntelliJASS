package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class LeaveRecord implements IRecord {
    public static final int TYPE = 0x17;

    private int reason;
    private int playerId;
    private int result;
    private int unknown;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        reason = inBuffer.getInt();
        playerId = inBuffer.get() & 0xFF;
        result = inBuffer.getInt();
        unknown = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {

        if(outBuffer == null)
            outBuffer = ByteBuffer.allocate(14).order(ByteOrder.LITTLE_ENDIAN);

        outBuffer.putInt(reason);
        outBuffer.put((byte) playerId);
        outBuffer.putInt(result);
        outBuffer.putInt(unknown);
        return outBuffer;
    }

    public int getReason() {
        return reason;
    }

    public LeaveRecord setReason(int reason) {
        this.reason = reason;
        return this;
    }

    public int getPlayerId() {
        return playerId;
    }

    public LeaveRecord setPlayerId(int playerId) {
        this.playerId = playerId;
        return this;
    }

    public int getResult() {
        return result;
    }

    public LeaveRecord setResult(int result) {
        this.result = result;
        return this;
    }

    public int getUnknown() {
        return unknown;
    }

    public LeaveRecord setUnknown(int unknown) {
        this.unknown = unknown;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        LeaveRecord that = (LeaveRecord) o;
        return reason == that.reason && playerId == that.playerId && result == that.result && unknown == that.unknown;
    }

    @Override
    public int hashCode() {
        return Objects.hash(reason, playerId, result, unknown);
    }
}
