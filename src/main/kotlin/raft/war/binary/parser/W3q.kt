package raft.war.binary.parser

import raft.war.binary.parser.data.MetaData
import raft.war.binary.parser.data.UpgradeMetaData
import raft.war.binary.parser.w3abdhqtu.W3abdhqtu

class W3q(bytes: ByteArray) : W3abdhqtu(bytes, true) {
    override val datamap: HashMap<String, MetaData>
        get() = UpgradeMetaData

    override val levelField: String
        get() = "maxlevel"
}
