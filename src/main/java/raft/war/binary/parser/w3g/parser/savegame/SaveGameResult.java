package raft.war.binary.parser.w3g.parser.savegame;

import raft.war.binary.parser.w3g.parser.utils.SlotInfo;
import raft.war.binary.parser.w3g.parser.utils.StatString;

public class SaveGameResult {
    private String mapPath;
    private String gameName;

    private StatString statStrings;
    private SlotInfo[] slots;

    private int randomSeed;
    private int gameMode;
    private int startSpotCount;
    private int magicNumber;

    public String getMapPath() {
        return mapPath;
    }

    public SaveGameResult setMapPath(String mapPath) {
        this.mapPath = mapPath;
        return this;
    }

    public String getGameName() {
        return gameName;
    }

    public SaveGameResult setGameName(String gameName) {
        this.gameName = gameName;
        return this;
    }

    public StatString getStatStrings() {
        return statStrings;
    }

    public SaveGameResult setStatStrings(StatString statStrings) {
        this.statStrings = statStrings;
        return this;
    }

    public SlotInfo[] getSlots() {
        return slots;
    }

    public SaveGameResult setSlots(SlotInfo[] slots) {
        this.slots = slots;
        return this;
    }

    public int getRandomSeed() {
        return randomSeed;
    }

    public SaveGameResult setRandomSeed(int randomSeed) {
        this.randomSeed = randomSeed;
        return this;
    }

    public int getGameMode() {
        return gameMode;
    }

    public SaveGameResult setGameMode(int gameMode) {
        this.gameMode = gameMode;
        return this;
    }

    public int getStartSpotCount() {
        return startSpotCount;
    }

    public SaveGameResult setStartSpotCount(int startSpotCount) {
        this.startSpotCount = startSpotCount;
        return this;
    }

    public int getMagicNumber() {
        return magicNumber;
    }

    public SaveGameResult setMagicNumber(int magicNumber) {
        this.magicNumber = magicNumber;
        return this;
    }
}
