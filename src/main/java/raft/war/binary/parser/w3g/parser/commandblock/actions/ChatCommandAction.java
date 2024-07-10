package raft.war.binary.parser.w3g.parser.commandblock.actions;

import raft.war.binary.parser.w3g.parser.commandblock.IAction;
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class ChatCommandAction implements IAction {

    public static final byte ACTION_ID = 0x60;

    private int unknownA;
    private int unknownB;
    private String command;

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.unknownA = inBuffer.getInt();
        this.unknownB = inBuffer.getInt();
        this.command = ByteBufferUtil.readUtf8CString(inBuffer);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(8 + ByteBufferUtil.utf8CStringLength(command));
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.putInt(unknownA);
        outBuffer.putInt(unknownB);
        ByteBufferUtil.writeUtf8CString(outBuffer, command);

        return outBuffer;
    }

    @Override
    public byte actionId() {
        return ACTION_ID;
    }

    public int getUnknownA() {
        return unknownA;
    }

    public ChatCommandAction setUnknownA(int unknownA) {
        this.unknownA = unknownA;
        return this;
    }

    public int getUnknownB() {
        return unknownB;
    }

    public ChatCommandAction setUnknownB(int unknownB) {
        this.unknownB = unknownB;
        return this;
    }

    public String getCommand() {
        return command;
    }

    public ChatCommandAction setCommand(String command) {
        this.command = command;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (!(o instanceof ChatCommandAction that))
            return false;
        return unknownA == that.unknownA && unknownB == that.unknownB && Objects.equals(command, that.command);
    }

    @Override
    public int hashCode() {
        return Objects.hash(unknownA, unknownB, command);
    }
}
