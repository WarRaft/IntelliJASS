package raft.war.binary.parser.w3g.parser;

import java.nio.ByteBuffer;

public interface IBinaryStructure {
    void parse(ByteBuffer inBuffer);

    ByteBuffer assembly(ByteBuffer outBuffer);
}
