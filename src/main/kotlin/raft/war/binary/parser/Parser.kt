package raft.war.binary.parser

import raft.war.binary.reader.ByteBufferWrap

abstract class Parser(bytes: ByteArray) {

    val buffer = ByteBufferWrap(bytes)

    abstract val lni: String

    companion object {
        fun fromExtension(extension: String, bytes: ByteArray): Parser {
            return when (extension.substringAfterLast('.')) {
                "imp" -> Imp(bytes)
                "w3a" -> W3a(bytes)
                "w3b" -> W3b(bytes)
                "w3d" -> W3d(bytes)
                "w3h" -> W3h(bytes)
                "w3q" -> W3q(bytes)
                "w3t" -> W3t(bytes)
                "w3u" -> W3u(bytes)
                else -> throw Exception("I don't know how to deal with $extension.")
            }
        }
    }
}
