package raft.war.binary.parser.w3abdhqtu

import raft.war.binary.reader.ByteBufferWrap

class W3abdhqtuItem {
    var default: UInt = 0u
    var custom: UInt = 0u
    var count: UInt = 1u
    var sets: MutableList<W3abdhqtuSet> = mutableListOf()

    @Suppress("ConvertSecondaryConstructorToPrimary")
    constructor(buffer: ByteBufferWrap, parent: MutableList<W3abdhqtuItem>, version: UInt) {
        parent.add(this)
        default = buffer.uint32be
        custom = buffer.uint32be
        if (version >= 3u) count = buffer.uint32le
    }
}
