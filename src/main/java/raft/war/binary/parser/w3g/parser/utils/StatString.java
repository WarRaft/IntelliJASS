package raft.war.binary.parser.w3g.parser.utils;

import raft.war.binary.parser.w3g.parser.IBinaryStructure;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

public class StatString implements IBinaryStructure {

    private int speed;
    private boolean hideTerrain;
    private boolean mapExplored;
    private boolean alwaysVisible;
    private boolean isDefault;
    private int observerMode;
    private boolean teamsTogether;
    private boolean fixedTeams;
    private boolean fullSharedUnitControl;
    private boolean randomHero;
    private boolean randomRaces;
    private boolean referees;
    private byte[] mapChecksum;
    private byte[] mapChecksumSha1;
    private String mapPath;
    private String creator;
    private int mapWidth;
    private int mapHeight;


    public static ByteBuffer decode(ByteBuffer data) {
        byte mask = 0;
        ByteBuffer result = ByteBuffer.allocate(data.remaining()).order(ByteOrder.LITTLE_ENDIAN);

        while (data.hasRemaining()) {
            if (data.position() % 8 == 0) {
                mask = data.get();
            } else {
                if ((mask & (1 << (data.position() % 8))) == 0) {
                    result.put((byte) (data.get() - 1));
                } else {
                    result.put(data.get());
                }
            }
        }

        result.flip();
        return result;
    }

    public static ByteBuffer encode(ByteBuffer data) {
        byte mask = 1;
        ByteBuffer result = ByteBuffer.allocate(data.remaining() + data.remaining() / 7 + 1);

        ByteBuffer chunk = ByteBuffer.allocate(8).position(1);

        while (data.hasRemaining()) {

            int index = data.position();
            byte value = data.get();


            if (value % 2 == 0) {
                chunk.put((byte) (value + 1));
            } else {
                chunk.put(value);
                mask |= (byte) (1 << ((index % 7) + 1));
            }

            if ((index) % 7 == 6 || !data.hasRemaining()) {
                chunk.put(0, mask);
                chunk.flip();
                result.put(chunk);

                chunk.clear().position(1);
                mask = 1;
            }
        }

        result.flip();
        return result;
    }

    public void parseDecoded(ByteBuffer inBuffer) {
        this.speed = inBuffer.get() & 0xFF;
        int secondByte = inBuffer.get() & 0xFF;
        int thirdByte = inBuffer.get() & 0xFF;
        int fourthByte = inBuffer.get() & 0xFF;
        inBuffer.get(); // Skip one byte

        this.mapWidth = Short.toUnsignedInt(inBuffer.getShort());
        this.mapHeight = Short.toUnsignedInt(inBuffer.getShort());
        this.mapChecksum = new byte[4];
        inBuffer.get(this.mapChecksum, 0, 4);
        this.mapPath = ByteBufferUtil.readUtf8CString(inBuffer);
        this.creator = ByteBufferUtil.readUtf8CString(inBuffer);
        inBuffer.get(); // Skip one byte
        this.mapChecksumSha1 = new byte[20];
        inBuffer.get(this.mapChecksumSha1, 0, 20);

        this.hideTerrain = (secondByte & 0b00000001) != 0;
        this.mapExplored = (secondByte & 0b00000010) != 0;
        this.alwaysVisible = (secondByte & 0b00000100) != 0;
        this.isDefault = (secondByte & 0b00001000) != 0;
        this.observerMode = (secondByte & 0b00110000) >>> 4;
        this.teamsTogether = (secondByte & 0b01000000) != 0;
        this.fixedTeams = (thirdByte & 0b00000110) != 0;
        this.fullSharedUnitControl = (fourthByte & 0b00000001) != 0;
        this.randomHero = (fourthByte & 0b00000010) != 0;
        this.randomRaces = (fourthByte & 0b00000100) != 0;
        this.referees = (fourthByte & 0b01000000) != 0;
    }

    public ByteBuffer assemblyDecoded() {
        ByteBuffer outBuffer = ByteBuffer.allocate(34 + mapPath.length() + creator.length() + 2).order(ByteOrder.LITTLE_ENDIAN);

        outBuffer.put((byte) speed);

        int secondByte = 0;
        if (hideTerrain)
            secondByte |= 0b00000001;
        if (mapExplored)
            secondByte |= 0b00000010;
        if (alwaysVisible)
            secondByte |= 0b00000100;
        if (isDefault)
            secondByte |= 0b00001000;
        secondByte |= (observerMode << 4) & 0b00110000;
        if (teamsTogether)
            secondByte |= 0b01000000;
        outBuffer.put((byte) secondByte);

        int thirdByte = 0;
        if (fixedTeams)
            thirdByte |= 0b00000110;
        outBuffer.put((byte) thirdByte);

        int fourthByte = 0;
        if (fullSharedUnitControl)
            fourthByte |= 0b00000001;
        if (randomHero)
            fourthByte |= 0b00000010;
        if (randomRaces)
            fourthByte |= 0b00000100;
        if (referees)
            fourthByte |= 0b01000000;
        outBuffer.put((byte) fourthByte);
        outBuffer.put((byte) 0);
        outBuffer.putShort((short) mapWidth);
        outBuffer.putShort((short) mapHeight);
        outBuffer.put(mapChecksum);
        ByteBufferUtil.writeUtf8CString(outBuffer, mapPath);
        ByteBufferUtil.writeUtf8CString(outBuffer, creator);
        outBuffer.put((byte) 0);
        outBuffer.put(mapChecksumSha1);

        return outBuffer;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {
        byte[] encodedStatString = ByteBufferUtil.readCStringBytes(inBuffer);
        ByteBuffer decoded = decode(ByteBuffer.wrap(encodedStatString)).order(ByteOrder.LITTLE_ENDIAN);
        parseDecoded(decoded);
    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        ByteBuffer encodedStatString = encode(assemblyDecoded().flip());

        if (outBuffer != null) {
            outBuffer.put(outBuffer);
            outBuffer.put((byte) 0);

            return outBuffer;
        }

        ByteBuffer result = ByteBuffer.allocate(encodedStatString.limit() + 1);

        result.put(encodedStatString);
        result.put((byte) 0);

        return result;
    }

    public int getSpeed() {
        return speed;
    }

    public StatString setSpeed(int speed) {
        this.speed = speed;
        return this;
    }

    public boolean isHideTerrain() {
        return hideTerrain;
    }

    public StatString setHideTerrain(boolean hideTerrain) {
        this.hideTerrain = hideTerrain;
        return this;
    }

    public boolean isMapExplored() {
        return mapExplored;
    }

    public StatString setMapExplored(boolean mapExplored) {
        this.mapExplored = mapExplored;
        return this;
    }

    public boolean isAlwaysVisible() {
        return alwaysVisible;
    }

    public StatString setAlwaysVisible(boolean alwaysVisible) {
        this.alwaysVisible = alwaysVisible;
        return this;
    }

    public boolean isDefault() {
        return isDefault;
    }

    public StatString setDefault(boolean aDefault) {
        isDefault = aDefault;
        return this;
    }

    public int getObserverMode() {
        return observerMode;
    }

    public StatString setObserverMode(int observerMode) {
        this.observerMode = observerMode;
        return this;
    }

    public boolean isTeamsTogether() {
        return teamsTogether;
    }

    public StatString setTeamsTogether(boolean teamsTogether) {
        this.teamsTogether = teamsTogether;
        return this;
    }

    public boolean isFixedTeams() {
        return fixedTeams;
    }

    public StatString setFixedTeams(boolean fixedTeams) {
        this.fixedTeams = fixedTeams;
        return this;
    }

    public boolean isFullSharedUnitControl() {
        return fullSharedUnitControl;
    }

    public StatString setFullSharedUnitControl(boolean fullSharedUnitControl) {
        this.fullSharedUnitControl = fullSharedUnitControl;
        return this;
    }

    public boolean isRandomHero() {
        return randomHero;
    }

    public StatString setRandomHero(boolean randomHero) {
        this.randomHero = randomHero;
        return this;
    }

    public boolean isRandomRaces() {
        return randomRaces;
    }

    public StatString setRandomRaces(boolean randomRaces) {
        this.randomRaces = randomRaces;
        return this;
    }

    public boolean isReferees() {
        return referees;
    }

    public StatString setReferees(boolean referees) {
        this.referees = referees;
        return this;
    }

    public byte[] getMapChecksum() {
        return mapChecksum;
    }

    public StatString setMapChecksum(byte[] mapChecksum) {
        this.mapChecksum = mapChecksum;
        return this;
    }

    public byte[] getMapChecksumSha1() {
        return mapChecksumSha1;
    }

    public StatString setMapChecksumSha1(byte[] mapChecksumSha1) {
        this.mapChecksumSha1 = mapChecksumSha1;
        return this;
    }

    public String getMapPath() {
        return mapPath;
    }

    public StatString setMapPath(String mapPath) {
        this.mapPath = mapPath;
        return this;
    }

    public String getCreator() {
        return creator;
    }

    public StatString setCreator(String creator) {
        this.creator = creator;
        return this;
    }

    public int getMapWidth() {
        return mapWidth;
    }

    public StatString setMapWidth(int mapWidth) {
        this.mapWidth = mapWidth;
        return this;
    }

    public int getMapHeight() {
        return mapHeight;
    }

    public StatString setMapHeight(int mapHeight) {
        this.mapHeight = mapHeight;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;
        StatString that = (StatString) o;
        return speed == that.speed && hideTerrain == that.hideTerrain && mapExplored == that.mapExplored && alwaysVisible == that.alwaysVisible && isDefault == that.isDefault && observerMode == that.observerMode && teamsTogether == that.teamsTogether && fixedTeams == that.fixedTeams && fullSharedUnitControl == that.fullSharedUnitControl && randomHero == that.randomHero && randomRaces == that.randomRaces && referees == that.referees && mapWidth == that.mapWidth && mapHeight == that.mapHeight && Arrays.equals(
                mapChecksum, that.mapChecksum) && Arrays.equals(mapChecksumSha1, that.mapChecksumSha1) && Objects.equals(mapPath,
                                                                                                                         that.mapPath
        ) && Objects.equals(creator, that.creator);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(speed, hideTerrain, mapExplored, alwaysVisible, isDefault, observerMode, teamsTogether, fixedTeams, fullSharedUnitControl,
                                  randomHero, randomRaces, referees, mapPath, creator, mapWidth, mapHeight
        );
        result = 31 * result + Arrays.hashCode(mapChecksum);
        result = 31 * result + Arrays.hashCode(mapChecksumSha1);
        return result;
    }
}
