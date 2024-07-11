package raft.war.binary.parser.w3g.parser.packed;

import raft.war.binary.parser.w3g.parser.replay.ReplayParserResult;

import java.util.List;

public class PackedResult {
    public List<IRecord> records;
    public ReplayParserResult payload;
}
