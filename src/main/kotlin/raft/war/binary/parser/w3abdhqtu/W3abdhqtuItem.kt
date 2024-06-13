package raft.war.binary.parser.w3abdhqtu

import raft.war.binary.reader.ByteBufferWrap

class W3abdhqtuItem {
    var original: UInt = 0u
    var modified: UInt = 0u
    var count: UInt = 1u
    var sets: MutableList<W3abdhqtuSet> = mutableListOf()

    @Suppress("ConvertSecondaryConstructorToPrimary")
    constructor(buffer: ByteBufferWrap, parent: MutableList<W3abdhqtuItem>, version: UInt) {
        parent.add(this);
        original = buffer.uint32be
        modified = buffer.uint32be
        if (version >= 3u) count = buffer.uint32le
    }
}
