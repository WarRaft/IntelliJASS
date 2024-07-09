package raft.war.binary.parser.w3g.parser.commandblock.actions.ujapi;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class UjApiSyncHashtableValue implements IUjapiSubAction {

    public static final byte UJAPI_ACTION_ID = (byte) 0x0B;

    private byte varType;

    private int hashTable;
    private int parentKey;
    private int childKey;

    private byte[] data;

    @Override
    public byte getSubActionId() {
        return UJAPI_ACTION_ID;
    }

    @Override
    public void parse(ByteBuffer inBuffer) {

        this.varType = inBuffer.get();
        short varSize = inBuffer.getShort();

        this.hashTable = inBuffer.getInt();
        this.parentKey = inBuffer.getInt();
        this.childKey = inBuffer.getInt();

        this.data = new byte[varSize];
        inBuffer.get(this.data);

    }

    @Override
    public ByteBuffer assembly(ByteBuffer outBuffer) {
        if (outBuffer == null) {
            outBuffer = ByteBuffer.allocate(15 + data.length).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            outBuffer.order(ByteOrder.LITTLE_ENDIAN);
        }

        outBuffer.put(varType);
        outBuffer.putShort((short) data.length);
        outBuffer.putInt(hashTable);
        outBuffer.putInt(parentKey);
        outBuffer.putInt(childKey);
        outBuffer.put(data);

        return outBuffer;
    }


    public byte getVarType() {
        return varType;
    }

    public UjApiSyncHashtableValue setVarType(byte varType) {
        this.varType = varType;
        return this;
    }

    public int getHashTable() {
        return hashTable;
    }

    public UjApiSyncHashtableValue setHashTable(int hashTable) {
        this.hashTable = hashTable;
        return this;
    }

    public int getParentKey() {
        return parentKey;
    }

    public UjApiSyncHashtableValue setParentKey(int parentKey) {
        this.parentKey = parentKey;
        return this;
    }

    public int getChildKey() {
        return childKey;
    }

    public UjApiSyncHashtableValue setChildKey(int childKey) {
        this.childKey = childKey;
        return this;
    }

    public byte[] getData() {
        return data;
    }

    public UjApiSyncHashtableValue setData(byte[] data) {
        this.data = data;
        return this;
    }

    public class ByteArrayToHex {

        public static String bytesToHex(byte[] bytes) {
            StringBuilder hexString = new StringBuilder();
            for (byte b : bytes) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            return hexString.toString().toUpperCase();
        }

        public static void main(String[] args) {
            byte[] byteArray = {(byte) 0xDE, (byte) 0xAD, (byte) 0xBE, (byte) 0xEF};
            String hexString = bytesToHex(byteArray);
            System.out.println(hexString);  // вывод: DEADBEEF
        }
    }
}
