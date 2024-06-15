package raft.war.binary.parser

import raft.war.binary.parser.data.DoodadMetaData
import raft.war.binary.parser.data.MetaData
import raft.war.binary.parser.w3abdhqtu.W3abdhqtu

class W3d(bytes: ByteArray) : W3abdhqtu(bytes, true) {
    override val datamap: HashMap<String, MetaData>
        get() = DoodadMetaData

    override val levelField: String
        get() = "numVar"
}
