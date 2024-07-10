package raft.war.binary.parser.w3g.parser.replay;

import raft.war.binary.parser.w3g.parser.packed.IRecord;
import raft.war.binary.parser.w3g.parser.utils.PlayerInfo;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ReplayParserResult {
    private GameRecord gameInfo;
    private StartRecord startInfo;
    private List<PlayerRecord> playerRecords;
    private List<TimeRecord<LeaveRecord>> playerLeave;
    private List<TimeRecord<ChatRecord>> chatMessages;
    private List<TimeRecord<TimeSlotRecord>> actions;
    private List<IRecord> others;

    public ReplayParserResult() {
        playerRecords = new ArrayList<>();
        playerLeave = new LinkedList<>();
        chatMessages = new LinkedList<>();
        actions = new LinkedList<>();
        others = new LinkedList<>();
    }

    public GameRecord getGameInfo() {
        return gameInfo;
    }

    public ReplayParserResult setGameInfo(GameRecord gameInfo) {
        this.gameInfo = gameInfo;
        return this;
    }

    public StartRecord getStartInfo() {
        return startInfo;
    }

    public ReplayParserResult setStartInfo(StartRecord startInfo) {
        this.startInfo = startInfo;
        return this;
    }

    public List<PlayerRecord> getPlayerRecords() {
        return playerRecords;
    }

    public ReplayParserResult setPlayerRecords(List<PlayerRecord> playerRecords) {
        this.playerRecords = playerRecords;
        return this;
    }

    public List<TimeRecord<LeaveRecord>> getPlayerLeave() {
        return playerLeave;
    }

    public ReplayParserResult setPlayerLeave(List<TimeRecord<LeaveRecord>> playerLeave) {
        this.playerLeave = playerLeave;
        return this;
    }

    public List<TimeRecord<ChatRecord>> getChatMessages() {
        return chatMessages;
    }

    public ReplayParserResult setChatMessages(List<TimeRecord<ChatRecord>> chatMessages) {
        this.chatMessages = chatMessages;
        return this;
    }

    public List<TimeRecord<TimeSlotRecord>> getActions() {
        return actions;
    }

    public ReplayParserResult setActions(List<TimeRecord<TimeSlotRecord>> actions) {
        this.actions = actions;
        return this;
    }

    public List<IRecord> getOthers() {
        return others;
    }

    public ReplayParserResult setOthers(List<IRecord> others) {
        this.others = others;
        return this;
    }

    public List<PlayerInfo> getPlayers( )
    {
        List<PlayerInfo> players = new ArrayList<>(playerRecords);
        players.add(gameInfo.getHostPlayer());

        return players;
    }
}
