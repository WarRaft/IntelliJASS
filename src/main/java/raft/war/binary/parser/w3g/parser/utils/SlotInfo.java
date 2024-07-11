package raft.war.binary.parser.w3g.parser.utils;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

public class SlotInfo  {

    private int playerId;
    private int downloadStatus;
    private int slotStatus;
    private int computer;
    private int team;
    private int color;
    private int race;
    private int computerType;
    private int handicap;


    public void parse(ByteBuffer inBuffer) {
        this.playerId = inBuffer.get();
        this.downloadStatus = inBuffer.get();
        this.slotStatus = inBuffer.get();
        this.computer = inBuffer.get();
        this.team = inBuffer.get();
        this.color = inBuffer.get();
        this.race = inBuffer.get();
        this.computerType = inBuffer.get();
        this.handicap = inBuffer.get();
    }

    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(9).order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put((byte) playerId);
        outBuffer.put((byte) downloadStatus);
        outBuffer.put((byte) slotStatus);
        outBuffer.put((byte) computer);
        outBuffer.put((byte) team);
        outBuffer.put((byte) color);
        outBuffer.put((byte) race);
        outBuffer.put((byte) computerType);
        outBuffer.put((byte) handicap);

        return outBuffer;
    }

    public int getPlayerId() {
        return playerId;
    }

    public SlotInfo setPlayerId(int playerId) {
        this.playerId = playerId;
        return this;
    }

    public int getDownloadStatus() {
        return downloadStatus;
    }

    public SlotInfo setDownloadStatus(int downloadStatus) {
        this.downloadStatus = downloadStatus;
        return this;
    }

    public int getSlotStatus() {
        return slotStatus;
    }

    public SlotInfo setSlotStatus(int slotStatus) {
        this.slotStatus = slotStatus;
        return this;
    }

    public int getComputer() {
        return computer;
    }

    public SlotInfo setComputer(int computer) {
        this.computer = computer;
        return this;
    }

    public int getTeam() {
        return team;
    }

    public SlotInfo setTeam(int team) {
        this.team = team;
        return this;
    }

    public int getColor() {
        return color;
    }

    public SlotInfo setColor(int color) {
        this.color = color;
        return this;
    }

    public int getRace() {
        return race;
    }

    public SlotInfo setRace(int race) {
        this.race = race;
        return this;
    }

    public int getComputerType() {
        return computerType;
    }

    public SlotInfo setComputerType(int computerType) {
        this.computerType = computerType;
        return this;
    }

    public int getHandicap() {
        return handicap;
    }

    public SlotInfo setHandicap(int handicap) {
        this.handicap = handicap;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        SlotInfo slotInfo = (SlotInfo) o;
        return playerId == slotInfo.playerId && downloadStatus == slotInfo.downloadStatus && slotStatus == slotInfo.slotStatus && computer == slotInfo.computer && team == slotInfo.team && color == slotInfo.color && race == slotInfo.race && computerType == slotInfo.computerType && handicap == slotInfo.handicap;
    }

    @Override
    public int hashCode() {
        return Objects.hash(playerId, downloadStatus, slotStatus, computer, team, color, race, computerType, handicap);
    }
}
