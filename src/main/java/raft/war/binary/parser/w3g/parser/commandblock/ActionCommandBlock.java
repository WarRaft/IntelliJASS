package raft.war.binary.parser.w3g.parser.commandblock;

import java.nio.ByteBuffer;
import java.util.List;

public class ActionCommandBlock {

    private int playerId;

    private List<IAction> actions;

    private ByteBuffer remainingBuffer;

    public ActionCommandBlock(int playerId, List<IAction> actions, ByteBuffer remainingBuffer) {
        this.playerId = playerId;
        this.actions = actions;
        this.remainingBuffer = remainingBuffer;
    }

    public int getPlayerId() {
        return playerId;
    }

    public ActionCommandBlock setPlayerId(int playerId) {
        this.playerId = playerId;
        return this;
    }

    public List<IAction> getActions() {
        return actions;
    }

    public ActionCommandBlock setActions(List<IAction> actions) {
        this.actions = actions;
        return this;
    }

    public ByteBuffer getRemainingBuffer() {
        return remainingBuffer;
    }

    public ActionCommandBlock setRemainingBuffer(ByteBuffer remainingBuffer) {
        this.remainingBuffer = remainingBuffer;
        return this;
    }

    @Override
    public String toString() {
        return "ActionCommandBlock [playerId=" + playerId + ", actions=" + actions + "]";
    }
}
