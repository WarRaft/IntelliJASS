package raft.war.binary.parser.w3g.parser.utils;

import raft.war.binary.parser.w3g.parser.IBinaryStructure;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Objects;

public class PlayerInfo implements IBinaryStructure {

    protected int playerId;
    protected String playerName;
    protected Integer runtimeOfPlayers;
    protected Integer race;
    protected byte[] skippedBytes;

    @Override
    public void parse(ByteBuffer inBuffer) {
        this.playerId = inBuffer.get();
        this.playerName = ByteBufferUtil.readUtf8CString(inBuffer);
        int additionalSize = inBuffer.get();
        switch (additionalSize) {
            case 8:
                this.runtimeOfPlayers = (int) inBuffer.get();
                this.race = (int) inBuffer.get();
                this.skippedBytes = new byte[6];
                inBuffer.get(this.skippedBytes);
                break;
            default:
                this.skippedBytes = new byte[additionalSize];
                inBuffer.get(this.skippedBytes);
        }
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        int additionalSize = (runtimeOfPlayers != null ? 1 : 0) + (race != null ? 1 : 0) + (skippedBytes != null ? skippedBytes.length : 0);

        if(outBuffer == null)
            outBuffer = ByteBuffer.allocate(2 + ByteBufferUtil.utf8CStringLength(playerName) + additionalSize);

        outBuffer.put((byte) playerId);
        ByteBufferUtil.writeUtf8CString(outBuffer, playerName);
        outBuffer.put((byte) additionalSize);

        if (runtimeOfPlayers != null) {
            outBuffer.put(runtimeOfPlayers.byteValue());
        }

        if (race != null) {
            outBuffer.put(race.byteValue());
        }

        if (skippedBytes != null) {
            outBuffer.put(skippedBytes);
        }

        return outBuffer;
    }

    public int getPlayerId() {
        return playerId;
    }

    public PlayerInfo setPlayerId(int playerId) {
        this.playerId = playerId;
        return this;
    }

    public String getPlayerName() {
        return playerName;
    }

    public PlayerInfo setPlayerName(String playerName) {
        this.playerName = playerName;
        return this;
    }

    public Integer getRuntimeOfPlayers() {
        return runtimeOfPlayers;
    }

    public PlayerInfo setRuntimeOfPlayers(Integer runtimeOfPlayers) {
        this.runtimeOfPlayers = runtimeOfPlayers;
        return this;
    }

    public Integer getRace() {
        return race;
    }

    public PlayerInfo setRace(Integer race) {
        this.race = race;
        return this;
    }

    public byte[] getSkippedBytes() {
        return skippedBytes;
    }

    public PlayerInfo setSkippedBytes(byte[] skippedBytes) {
        this.skippedBytes = skippedBytes;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        PlayerInfo that = (PlayerInfo) o;
        return playerId == that.playerId && Objects.equals(playerName, that.playerName) && Objects.equals(runtimeOfPlayers,
                                                                                                          that.runtimeOfPlayers
        ) && Objects.equals(race, that.race) && Arrays.equals(skippedBytes, that.skippedBytes);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(playerId, playerName, runtimeOfPlayers, race);
        result = 31 * result + Arrays.hashCode(skippedBytes);
        return result;
    }
}
