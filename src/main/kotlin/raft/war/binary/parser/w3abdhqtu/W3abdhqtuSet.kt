package raft.war.binary.parser.w3abdhqtu

import raft.war.binary.reader.ByteBufferWrap

class W3abdhqtuSet {
    var flag: UInt = 0u
    var count: UInt = 0u
    val mods: MutableList<W3abdhqtuMod> = mutableListOf()

    @Suppress("ConvertSecondaryConstructorToPrimary")
    constructor(buffer: ByteBufferWrap, parent: MutableList<W3abdhqtuSet>, version: UInt) {
        parent.add(this)
        if (version >= 3u) flag = buffer.uint32be
        count = buffer.uint32le
    }
}
