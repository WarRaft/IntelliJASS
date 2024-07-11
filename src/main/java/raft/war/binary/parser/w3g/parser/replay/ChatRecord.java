
package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class ChatRecord implements IRecord {

    public static final int TYPE = 0x20;

    private byte playerId;

    private Integer chatMode;

    private byte flags;

    private String message;

    @Override
    public int getRecordId() {
        return TYPE;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        playerId = inBuffer.get();
        inBuffer.getShort(); // length
        flags = inBuffer.get();
        chatMode = (flags != 0x10) ? inBuffer.getInt() : null;
        message = ByteBufferUtil.readUtf8CString(inBuffer);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        ChatRecord that = (ChatRecord) o;
        return playerId == that.playerId && flags == that.flags && Objects.equals(chatMode, that.chatMode) && Objects.equals(message, that.message);
    }

    @Override
    public int hashCode() {
        return Objects.hash(playerId, chatMode, flags, message);
    }

    public byte getPlayerId() {
        return playerId;
    }

    public ChatRecord setPlayerId(byte playerId) {
        this.playerId = playerId;
        return this;
    }

    public Integer getChatMode() {
        return chatMode;
    }

    public ChatRecord setChatMode(Integer chatMode) {
        this.chatMode = chatMode;
        return this;
    }

    public byte getFlags() {
        return flags;
    }

    public ChatRecord setFlags(byte flags) {
        this.flags = flags;
        return this;
    }

    public String getMessage() {
        return message;
    }

    public ChatRecord setMessage(String message) {
        this.message = message;
        return this;
    }
}
