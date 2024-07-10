package raft.war.binary.parser.w3g.parser.savegame;

import raft.war.binary.parser.w3g.parser.packed.IRecord;
import raft.war.binary.parser.w3g.parser.packed.IRecordParser;
import raft.war.binary.parser.w3g.parser.packed.PackedParser;
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil;
import raft.war.binary.parser.w3g.parser.utils.SlotInfo;
import raft.war.binary.parser.w3g.parser.utils.StatString;

import java.io.EOFException;
import java.nio.ByteBuffer;

public class SaveGameParser extends PackedParser<SaveGameResult> {
    @Override
    protected IRecordParser<SaveGameResult> createRecordParser() {
        return new SaveGameRecordParser();
    }

    private static class SaveGameRecordParser implements IRecordParser<SaveGameResult> {

        private SaveGameResult result;

        @Override
        public IRecord processDecompressedData(ByteBuffer data) throws EOFException {

            String mapPath = ByteBufferUtil.readUtf8CString(data);
            ByteBufferUtil.readUtf8CString(data); // ???
            String gameName = ByteBufferUtil.readUtf8CString(data);
            ByteBufferUtil.readUtf8CString(data); // ???

            StatString statString = new StatString();
            statString.parse(data); // statstting

            data.position(data.position() + 10);

            int numSlots = data.get() & 0xFF;
            SlotInfo[] slots = new SlotInfo[numSlots];

            for (int i = 0; i < numSlots; ++i) {
                slots[i] = new SlotInfo();
                slots[i].parse(data);
            }

            int randomSeed = data.getInt();
            int gameMode = data.get() & 0xFF;
            int startSpotCount = data.get() & 0xFF;
            int magicNumber = data.getInt();

            result = new SaveGameResult();
            result.setMapPath(mapPath);
            result.setGameName(gameName);

            result.setStatStrings(statString);
            result.setSlots(slots);

            result.setRandomSeed(randomSeed);
            result.setGameMode(gameMode);
            result.setStartSpotCount(startSpotCount);
            result.setMagicNumber(magicNumber);

            throw new EOFException();
        }

        @Override
        public void saveRecord(IRecord record) {

        }

        @Override
        public SaveGameResult getPayload() {
            return result;
        }
    }
}
