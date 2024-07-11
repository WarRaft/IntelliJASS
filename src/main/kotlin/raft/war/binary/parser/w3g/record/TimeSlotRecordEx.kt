package raft.war.binary.parser.w3g.record

class TimeSlotRecordEx : TimeSlotRecord() {
    override fun getRecordId(): Int {
        return TYPE
    }

    companion object {
        const val TYPE: Int = 0x1E
    }
}
