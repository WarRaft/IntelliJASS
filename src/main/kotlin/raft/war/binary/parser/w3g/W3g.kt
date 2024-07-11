package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.exceptions.PackedFormatException;
import raft.war.binary.parser.w3g.parser.packed.IRecord;
import raft.war.binary.parser.w3g.parser.packed.IRecordParser;
import raft.war.binary.parser.w3g.parser.packed.PackedParser;
import raft.war.binary.parser.w3g.parser.packed.PackedResult;


import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Predicate;
import java.util.zip.DataFormatException;

public class ReplayParser extends PackedParser<ReplayParserResult> {

    private static final Map<Integer, Class<? extends IRecord>> recordParsers = new HashMap<>() {{
        put(GameRecord.TYPE, GameRecord.class);
        put(ChatRecord.TYPE, ChatRecord.class);
        put(ChecksumRecord.TYPE, ChecksumRecord.class);
        put(LeaveRecord.TYPE, LeaveRecord.class);
        put(PlayerRecord.TYPE, PlayerRecord.class);
        put(StartRecord.TYPE, StartRecord.class);
        put(ReforgedRecord.TYPE, ReforgedRecord.class);
        put(TimeSlotRecord.TYPE, TimeSlotRecord.class);
        put(TimeSlot2Record.TYPE, TimeSlot2Record.class);
        put(Unknown1aRecord.TYPE, Unknown1aRecord.class);
        put(Unknown1bRecord.TYPE, Unknown1bRecord.class);
        put(Unknown1cRecord.TYPE, Unknown1cRecord.class);
    }};

    @Override
    protected IRecordParser<ReplayParserResult> createRecordParser() {
        return new ReplayParserParser();
    }

    @Override
    public PackedResult<ReplayParserResult> parsePacked(byte[] bytes) throws IOException, PackedFormatException, DataFormatException {
        return super.parsePacked(bytes);
    }

    private static class ReplayParserParser implements IRecordParser<ReplayParserResult> {
        private final ReplayParserResult replayParserResult = new ReplayParserResult();

        private long time = 0;

        @Override
        public IRecord processDecompressedData(ByteBuffer data) throws Exception {
            data.mark();

            try {
                Integer recordId = (int) data.get();
                Class<? extends IRecord> recordClass = recordParsers.get(recordId);

                if(recordClass == null)
                    throw new PackedFormatException("Unknown record type " + recordId);

                IRecord record = recordClass.getConstructor().newInstance();
                record.parse(data);

                return record;
            }
            catch (BufferUnderflowException e)
            {
                data.reset();
                return null; // Need More
            }
        }

        public void saveRecord(IRecord record)
        {
            if(record instanceof ChatRecord)
                replayParserResult.getChatMessages().add(new TimeRecord<>((ChatRecord) record, time));
            else if(record instanceof GameRecord)
                replayParserResult.setGameInfo((GameRecord) record);
            else if(record instanceof LeaveRecord)
                replayParserResult.getPlayerLeave().add(new TimeRecord<>((LeaveRecord) record, time));
            else if(record instanceof PlayerRecord)
                replayParserResult.getPlayerRecords().add((PlayerRecord) record);
            else if(record instanceof StartRecord)
                replayParserResult.setStartInfo((StartRecord) record);
            else if(record instanceof TimeSlotRecord)
            {
                replayParserResult.getActions().add(new TimeRecord<>((TimeSlotRecord) record, time));
                time += ((TimeSlotRecord) record).getTimeIncrement();
            }
            else
                replayParserResult.getOthers().add(record);
        }

        @Override
        public ReplayParserResult getPayload() {
            return replayParserResult;
        }
    }
}
