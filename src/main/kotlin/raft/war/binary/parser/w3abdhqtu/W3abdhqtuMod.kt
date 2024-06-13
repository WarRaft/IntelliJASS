package raft.war.binary.parser.w3abdhqtu

import raft.war.binary.reader.ByteBufferWrap

class W3abdhqtuMod {
    var modification = 0u
    var type = 0u
    var level = 0u
    var data = 0u

    var ivalue = 0
    var fvalue: Float = 0f
    var svalue = ""

    var end = 0u

    @Suppress("ConvertSecondaryConstructorToPrimary")
    constructor(buffer: ByteBufferWrap, parent: MutableList<W3abdhqtuMod>, optional: Boolean) {
        parent.add(this)
        modification = buffer.uint32be
        type = buffer.uint32le

        if (optional) {
            level = buffer.uint32be
            data = buffer.uint32le
        }

        when (type) {
            0u -> ivalue = buffer.uint32le.toInt()
            1u, 2u -> fvalue = buffer.float32le
            //1u, 2u -> ivalue = buffer.uint32le.toInt()
            3u -> svalue = buffer.string
        }

        end = buffer.uint32be
    }
}
