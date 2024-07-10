package raft.war.binary.parser.w3g.parser.packed;

import java.util.List;

public class PackedResult<P> {
    private Header header;

    private SubHeader subHeader;

    private List<IRecord> records;

    P payload;

    public Header getHeader() {
        return header;
    }

    public PackedResult<P> setHeader(Header header) {
        this.header = header;
        return this;
    }

    public SubHeader getSubHeader() {
        return subHeader;
    }

    public PackedResult<P> setSubHeader(SubHeader subHeader) {
        this.subHeader = subHeader;
        return this;
    }

    public List<IRecord> getRecords() {
        return records;
    }

    public PackedResult<P> setRecords(List<IRecord> records) {
        this.records = records;
        return this;
    }

    public P getPayload() {
        return payload;
    }

    public PackedResult<P> setPayload(P payload) {
        this.payload = payload;
        return this;
    }
}
