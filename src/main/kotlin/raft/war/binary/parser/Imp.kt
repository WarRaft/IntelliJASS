package raft.war.binary.parser

class Imp(bytes: ByteArray) : Parser(bytes) {

    val version: UInt = buffer.uint32le
    val count: UInt = buffer.uint32le
    val list: MutableList<String> = mutableListOf()

    init {
        for (i in 0u..count - 1u) {
            val f = buffer.uint8
            val prefix: String = if (f and 0x02u == 0u) "" else "war3mapImported\\"
            list += prefix + buffer.string
        }
    }

    override val lni: String
        get() {
            val sb = StringBuilder().append("import {\n")

            for (s in list) {
                sb.append("\"").append(s).append("\",\n")
            }

            return sb.append("}").toString()
        }

}
