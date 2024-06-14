package raft.war.binary.parser.w3abdhqtu

import raft.war.binary.parser.Parser
import raft.war.binary.parser.data.MetaData
import raft.war.binary.reader.ByteBufferWrap.Companion.uint2id


abstract class W3abdhqtu(bytes: ByteArray, val optional: Boolean) : Parser(bytes) {

    val version: UInt = buffer.uint32le

    val items: MutableList<W3abdhqtuItem> = mutableListOf()

    init {
        for (a in 0..1) {
            val count: UInt = buffer.uint32le
            for (b in 1u..count) {
                val item = W3abdhqtuItem(buffer, items, version)
                for (c in 1u..item.count) {
                    val set = W3abdhqtuSet(buffer, item.sets, version)
                    for (d in 1u..set.count) {
                        W3abdhqtuMod(buffer, set.mods, optional)
                    }
                }
            }
        }

        //print("${buffer.cursor}|${bytes.size}\n")
    }

    open val datamap: HashMap<String, MetaData>?
        get() = null

    override val lni: String
        get() {
            val sb = StringBuilder().append("-- version: ").append(version).append("\n")

            for (item in items) {
                sb.append("\n")

                if (item.custom == 0u) {
                    sb.append("[").append(uint2id(item.default)).append("]\n")
                } else {
                    sb.append("[").append(uint2id(item.custom)).append("]\n")
                    sb.append("_parent = \"").append(uint2id(item.default)).append("\"\n")
                }

                for (set in item.sets) {
                    for (mod in set.mods) {
                        val key = uint2id(mod.modification)
                        var name = key
                        val map = datamap
                        if (map != null) {
                            val data = map[name]
                            if (data != null) {
                                name = data.field
                                sb
                                    .append("-- ")
                                    .append(data.type)
                                    .append(" (")
                                    .append(key)
                                    .append(") ")
                                    .append(data.displayName)
                                    .append("\n")
                            }
                        }
                        sb.append(name).append(" = ")
                        mod.appendValue(sb).append("\n")
                    }
                }
            }
            return sb.append("}").toString()
        }
}
