package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;

public class TimeRecord<R extends IRecord> {

    private R record;

    private long time;

    public TimeRecord(R record, long time) {
        this.record = record;
        this.time = time;
    }

    public R getRecord() {
        return record;
    }

    public TimeRecord<R> setRecord(R record) {
        this.record = record;
        return this;
    }

    public long getTime() {
        return time;
    }

    public TimeRecord<R> setTime(long time) {
        this.time = time;
        return this;
    }
}
