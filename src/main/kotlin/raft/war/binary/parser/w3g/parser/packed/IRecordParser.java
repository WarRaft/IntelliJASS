package raft.war.binary.parser.w3g.parser.packed;

import java.nio.ByteBuffer;

public interface IRecordParser<P extends Object> {
    IRecord processDecompressedData(ByteBuffer data) throws Exception;

    void saveRecord(IRecord record);

    P getPayload();
}
