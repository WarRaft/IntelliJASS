package raft.war.binary.parser.w3g.parser.packed;

import java.nio.ByteBuffer;

public interface IRecord {

    int getRecordId();

    void parse(ByteBuffer inBuffer);
}
