package raft.war.binary.parser.w3abdhqtu

import raft.war.binary.parser.Parser
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
                        sb.append(uint2id(mod.modification)).append(" = ")

                        when (mod.type) {
                            0u -> sb.append(mod.ivalue)
                            1u, 2u -> sb.append(mod.fvalue)
                            3u -> sb.append("\"").append(mod.svalue).append("\"")
                        }
                        sb
                            .append(" -- ")
                            .append(mod.type)
                            .append("\n")
                    }
                }
            }
            return sb.append("}").toString()
        }
}
