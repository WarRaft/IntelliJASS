package raft.war.binary.parser

import raft.war.binary.parser.data.MetaData
import raft.war.binary.parser.data.UnitMetaData
import raft.war.binary.parser.w3abdhqtu.W3abdhqtu

class W3u(bytes: ByteArray) : W3abdhqtu(bytes, false) {
    override val datamap: HashMap<String, MetaData>
        get() = UnitMetaData
}
