package raft.war.binary.parser

import raft.war.binary.parser.data.AbilityMetaData
import raft.war.binary.parser.data.MetaData
import raft.war.binary.parser.w3abdhqtu.W3abdhqtu

class W3a(bytes: ByteArray) : W3abdhqtu(bytes, true) {
    override val datamap: HashMap<String, MetaData>
        get() = AbilityMetaData
}
