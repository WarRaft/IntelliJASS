package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.commandBlock.CommandBlockAction;
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SaveGameAction implements CommandBlockAction {

    public static final byte ACTION_ID = 0x06;

    private String fileName;

    public void parse(ByteBuffer inBuffer) {
        this.fileName = ByteBufferUtil.readUtf8CString(inBuffer);
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(ByteBufferUtil.utf8CStringLength(fileName));
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        ByteBufferUtil.writeUtf8CString(outBuffer, fileName);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public String getFileName() {
        return fileName;
    }

    public SaveGameAction setFileName(String fileName) {
        this.fileName = fileName;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof SaveGameAction that))
            return false;
        return Objects.equals(fileName, that.fileName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(fileName);
    }
}
