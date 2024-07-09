package raft.war.binary.parser.w3g.parser.replay;

public class TimeSlot2Record extends TimeSlotRecord {
    public static final int TYPE = 0x1E;

    @Override
    public int getRecordId() {
        return TYPE;
    }

}
