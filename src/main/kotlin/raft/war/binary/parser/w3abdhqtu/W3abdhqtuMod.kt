package raft.war.binary.parser.w3abdhqtu

import raft.war.binary.reader.ByteBufferWrap
import raft.war.binary.reader.ByteBufferWrap.Companion.uint2id

class W3abdhqtuMod {
    var modification = 0u
    var modificationString = ""
    var type = 0u
    var level = 0u
    var data = 0u

    var ivalue = 0
    var fvalue = 0f
    var svalue = ""

    val value: String
        get() = when (type) {
            0u -> ivalue.toString()
            1u, 2u -> fvalue.toString()
            3u -> "\"" + svalue + "\""
            else -> ""
        }

    var end = 0u

    val levels: MutableList<W3abdhqtuMod> = mutableListOf()

    @Suppress("ConvertSecondaryConstructorToPrimary")
    constructor(buffer: ByteBufferWrap, parent: MutableList<W3abdhqtuMod>, optional: Boolean) {
        parent.add(this)
        modification = buffer.uint32be
        modificationString = uint2id(modification)

        type = buffer.uint32le

        if (optional) {
            level = buffer.uint32le
            data = buffer.uint32le
        }

        when (type) {
            0u -> ivalue = buffer.uint32le.toInt()
            1u, 2u -> fvalue = buffer.float32le
            3u -> svalue = buffer.string
        }

        end = buffer.uint32be
    }
}
