package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;
import raft.war.binary.parser.w3g.parser.utils.SlotInfo;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

public class StartRecord implements IRecord {

    public static final int TYPE = 0x19;

    private SlotInfo[] slots;
    private int randomSeed;
    private int gameMode;
    private int startSpotCount;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        int dataSize = inBuffer.getShort() & 0xFFFF;
        int slotCount = inBuffer.get() & 0xFF;

        slots = new SlotInfo[slotCount];

        for (int i = 0; i < slotCount; ++i) {
            slots[i] = new SlotInfo();
            slots[i].parse(inBuffer);
        }

        randomSeed = inBuffer.getInt();
        gameMode = inBuffer.get() & 0xFF;
        startSpotCount = inBuffer.get() & 0xFF;
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {

        int slotDataSize = 0;
        ByteBuffer[] slotsData = new ByteBuffer[slots.length];

        for (int i = 0; i < slots.length; ++i) {
            slotsData[i] = slots[i].assembly(null).flip();
            slotDataSize += slotsData[i].remaining();
        }

        int dataSize = 9 + slotDataSize;

        ByteBuffer buffer;
        if (outBuffer == null) {
            // Create a ByteBuffer with reverse byte order if outBuffer is null
            buffer = ByteBuffer.allocate(dataSize).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            buffer = outBuffer;
            buffer.clear();
        }

        buffer.putShort((short) dataSize);
        buffer.put((byte) slots.length);

        for (ByteBuffer slotData : slotsData) {
            buffer.put(slotData);
        }

        buffer.putInt(randomSeed);
        buffer.put((byte) gameMode);
        buffer.put((byte) startSpotCount);

        return buffer;
    }

    public SlotInfo[] getSlots() {
        return slots;
    }

    public StartRecord setSlots(SlotInfo[] slots) {
        this.slots = slots;
        return this;
    }

    public int getRandomSeed() {
        return randomSeed;
    }

    public StartRecord setRandomSeed(int randomSeed) {
        this.randomSeed = randomSeed;
        return this;
    }

    public int getGameMode() {
        return gameMode;
    }

    public StartRecord setGameMode(int gameMode) {
        this.gameMode = gameMode;
        return this;
    }

    public int getStartSpotCount() {
        return startSpotCount;
    }

    public StartRecord setStartSpotCount(int startSpotCount) {
        this.startSpotCount = startSpotCount;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        StartRecord that = (StartRecord) o;
        return randomSeed == that.randomSeed && gameMode == that.gameMode && startSpotCount == that.startSpotCount && Arrays.equals(slots, that.slots);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(randomSeed, gameMode, startSpotCount);
        result = 31 * result + Arrays.hashCode(slots);
        return result;
    }
}
