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

    open val levelField: String?
        get() = null

    abstract val datamap: HashMap<String, MetaData>

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
                    val map = datamap

                    val mods = set.mods.toMutableList()
                    var levels = 0
                    val modmap: MutableMap<UInt, W3abdhqtuMod> = mutableMapOf()

                    if (levelField != null) {
                        val iterator = mods.iterator()
                        while (iterator.hasNext()) {
                            val mod = iterator.next()
                            val data = map[mod.modificationString] ?: continue
                            if (data.field == levelField) {
                                levels = mod.ivalue
                                continue
                            }
                            if (data.repeat > 0) {
                                if (modmap.containsKey(mod.modification)) {
                                    modmap[mod.modification]!!.levels.add(mod)
                                    iterator.remove()
                                } else {
                                    modmap[mod.modification] = mod
                                    mod.levels.add(mod)
                                }
                            }
                        }
                    }

                    for (mod in mods) {
                        var name = mod.modificationString
                        val data = map[name]
                        if (data != null) {
                            name = data.field
                            sb
                                .append("-- ")
                                .append(data.type)
                                .append(" (")
                                .append(mod.modificationString)
                                .append(") ")
                                .append(data.displayName)
                                .append("\n")
                        }
                        sb.append(name).append(" = ")

                        if (data != null && data.repeat > 0) {
                            val list: MutableList<String> = MutableList(levels) { "" }
                            for (lmod in mod.levels) {
                                val l = lmod.level.toInt() - 1
                                while (list.size <= l) list.add("")
                                list[l] = lmod.value
                            }
                            sb.append("{").append(list.joinToString(separator = ", ")).append("}\n")
                        } else {
                            sb.append(mod.value).append("\n")
                        }
                    }
                }
            }
            return sb.append("}").toString()
        }
}
