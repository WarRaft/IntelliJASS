package raft.war.binary.parser.w3abdhqtu

import com.intellij.openapi.diagnostic.Logger
import raft.war.binary.parser.Parser
import raft.war.binary.reader.ByteBufferWrap.Companion.uint2id


open class W3abdhqtu(bytes: ByteArray, val optional: Boolean) : Parser(bytes) {

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

        logger.warn("${buffer.cursor}|${bytes.size}\n")
    }

    override val lni: String
        get() {
            val sb = StringBuilder().append("units {\n")

            sb.append("-- version: ").append(version).append("\n")

            for (item in items) {
                sb.append("-- original:").append(uint2id(item.original)).append("\n")
                sb.append("-- modified: ").append(uint2id(item.modified)).append("\n")
                sb.append("-- count: ").append(item.count).append("\n")

                for (set in item.sets) {
                    sb.append("-- flag: ").append(set.flag).append("\n")
                    sb.append("-- count: ").append(set.count).append("\n\n")

                    for (mod in set.mods) {
                        sb
                            .append("-- ")
                            .append(uint2id(mod.modification))
                            .append(", type: ")
                            .append(mod.type)
                            .append(", value: ")
                        when (mod.type) {
                            0u -> sb.append(mod.ivalue)
                            1u -> sb.append(mod.ivalue)
                            2u -> sb.append(mod.ivalue)
                            3u -> sb.append(mod.svalue)
                        }
                        sb
                            .append(", end: ")
                            .append(uint2id(mod.end))
                            .append("\n")

                    }
                }

            }

            return sb.append("}").toString()
        }

    companion object {
        private val logger = Logger.getInstance(W3abdhqtu::class.java)
    }
}
