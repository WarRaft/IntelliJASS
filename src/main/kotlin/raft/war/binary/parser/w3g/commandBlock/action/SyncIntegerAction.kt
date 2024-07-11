package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SyncIntegerAction implements IAction {

    public static final byte ACTION_ID = 0x6b;

    private String filename;
    private String missionKey;
    private String key;
    private int value;

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.filename = ByteBufferUtil.readUtf8CString(inBuffer);
        this.missionKey = ByteBufferUtil.readUtf8CString(inBuffer);
        this.key = ByteBufferUtil.readUtf8CString(inBuffer);
        this.value = inBuffer.getInt();
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(
                    ByteBufferUtil.utf8CStringLength(filename) + ByteBufferUtil.utf8CStringLength(missionKey) + ByteBufferUtil.utf8CStringLength(key) + 4);
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        ByteBufferUtil.writeUtf8CString(outBuffer, filename);
        ByteBufferUtil.writeUtf8CString(outBuffer, missionKey);
        ByteBufferUtil.writeUtf8CString(outBuffer, key);
        outBuffer.putInt(value);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public String getFilename() {
        return filename;
    }

    public SyncIntegerAction setFilename(String filename) {
        this.filename = filename;
        return this;
    }

    public String getMissionKey() {
        return missionKey;
    }

    public SyncIntegerAction setMissionKey(String missionKey) {
        this.missionKey = missionKey;
        return this;
    }

    public String getKey() {
        return key;
    }

    public SyncIntegerAction setKey(String key) {
        this.key = key;
        return this;
    }

    public int getValue() {
        return value;
    }

    public SyncIntegerAction setValue(int value) {
        this.value = value;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SyncIntegerAction that))
            return false;
        return value == that.value && Objects.equals(filename, that.filename) && Objects.equals(missionKey, that.missionKey) && Objects.equals(key, that.key);
    }

    @Override
    public int hashCode() {
        return Objects.hash(filename, missionKey, key, value);
    }
}
