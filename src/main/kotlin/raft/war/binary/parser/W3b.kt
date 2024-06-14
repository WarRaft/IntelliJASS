package raft.war.binary.parser

import raft.war.binary.parser.data.DestructableMetaData
import raft.war.binary.parser.data.MetaData
import raft.war.binary.parser.w3abdhqtu.W3abdhqtu

class W3b(bytes: ByteArray) : W3abdhqtu(bytes, false) {
    override val datamap: HashMap<String, MetaData>
        get() = DestructableMetaData
}
