package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil;
import raft.war.binary.parser.w3g.parser.utils.PlayerInfo;
import raft.war.binary.parser.w3g.parser.utils.StatString;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class GameRecord implements IRecord {

    public static final  int TYPE = 0x00;

    private StatString statString;
    private PlayerInfo hostPlayer;
    private String gameName;
    private String privateString;
    private int playersCount;
    private int gameType;
    private int languageId;

    @Override
    public void parse(ByteBuffer inBuffer) {
        statString = new StatString();
        hostPlayer = new PlayerInfo();

        hostPlayer.parse(inBuffer);

        gameName = ByteBufferUtil.readUtf8CString(inBuffer);
        privateString = ByteBufferUtil.readUtf8CString(inBuffer);


        statString.parse(inBuffer);

        playersCount = inBuffer.getInt();
        gameType = inBuffer.getInt();
        languageId = inBuffer.getInt();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        ByteBuffer statStringData = statString.assembly(null).flip();
        ByteBuffer hostPlayerData = hostPlayer.assembly(null).flip();

        if (outBuffer == null) {
            int bufferLength = 13 + statStringData.limit() + hostPlayerData.remaining() + ByteBufferUtil.utf8CStringLength(gameName);

            outBuffer = ByteBuffer.allocate(bufferLength).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(hostPlayerData);
        ByteBufferUtil.writeUtf8CString(outBuffer, gameName);
        ByteBufferUtil.writeUtf8CString(outBuffer, privateString);
        outBuffer.put(statStringData);

        outBuffer.putInt(playersCount);
        outBuffer.putInt(gameType);
        outBuffer.putInt(languageId);

        return outBuffer;
    }

    @Override
    public int getRecordId() {
        return TYPE;
    }

    public StatString getStatString() {
        return statString;
    }

    public GameRecord setStatString(StatString statString) {
        this.statString = statString;
        return this;
    }

    public PlayerInfo getHostPlayer() {
        return hostPlayer;
    }

    public GameRecord setHostPlayer(PlayerInfo hostPlayer) {
        this.hostPlayer = hostPlayer;
        return this;
    }

    public String getGameName() {
        return gameName;
    }

    public GameRecord setGameName(String gameName) {
        this.gameName = gameName;
        return this;
    }

    public int getPlayersCount() {
        return playersCount;
    }

    public GameRecord setPlayersCount(int playersCount) {
        this.playersCount = playersCount;
        return this;
    }

    public int getGameType() {
        return gameType;
    }

    public GameRecord setGameType(int gameType) {
        this.gameType = gameType;
        return this;
    }

    public int getLanguageId() {
        return languageId;
    }

    public GameRecord setLanguageId(int languageId) {
        this.languageId = languageId;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        GameRecord that = (GameRecord) o;
        return playersCount == that.playersCount && gameType == that.gameType && languageId == that.languageId && Objects.equals(statString,
                                                                                                                                 that.statString
        ) && Objects.equals(hostPlayer, that.hostPlayer) && Objects.equals(gameName, that.gameName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(statString, hostPlayer, gameName, playersCount, gameType, languageId);
    }
}
