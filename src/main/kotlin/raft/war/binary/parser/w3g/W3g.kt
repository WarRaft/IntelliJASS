package raft.war.binary.parser.w3g

import raft.war.binary.parser.w3g.parser.packed.Block
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil
import raft.war.binary.parser.w3g.record.*
import java.io.ByteArrayInputStream
import java.io.EOFException
import java.io.InputStream
import java.nio.BufferUnderflowException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.util.*
import java.util.zip.Inflater
import kotlin.math.min

open class W3g {
    lateinit var header: Header
    lateinit var subheader: SubHeader

    val records: MutableList<RecordBase> = LinkedList()

    private var timestamp: Long = 0

    private fun processDecompressedData(data: ByteBuffer): RecordBase? {
        data.mark()

        try {
            val record: RecordBase?
            when (val recordId = data.get().toInt()) {
                GameRecord.ID -> record = GameRecord()
                ChatRecord.ID -> record = ChatRecord()
                ChecksumRecord.ID -> record = ChecksumRecord()
                LeaveRecord.ID -> record = LeaveRecord()
                PlayerRecord.ID -> record = PlayerRecord()
                StartRecord.ID -> record = StartRecord()
                ReforgedRecord.ID -> record = ReforgedRecord()
                TimeSlotRecord.ID -> record = TimeSlotRecord()
                TimeSlotRecordEx.ID -> record = TimeSlotRecordEx()
                Unknown1aRecord.ID -> record = Unknown1aRecord()
                Unknown1bRecord.ID -> record = Unknown1bRecord()
                Unknown1cRecord.ID -> record = Unknown1cRecord()
                else -> {
                    throw Exception("Unknown record type $recordId")
                }
            }

            record.parse(data)
            return record
        } catch (_: BufferUnderflowException) {
            data.reset()
            return null // Need More
        }
    }

    fun parse(bytes: ByteArray) {
        val readBuffer = ByteBuffer.allocate(0xFFFF).order(ByteOrder.LITTLE_ENDIAN)

        readBuffer.limit(REPLAY_MAGIC_HEADER_LENGTH + 41)

        val fileData: InputStream = ByteArrayInputStream(bytes)

        refillBuffer(fileData, readBuffer)

        if (REPLAY_MAGIC_HEADER != ByteBufferUtil.readUtf8CString(readBuffer)) throw Exception("Invalid file header")

        header = Header()
        header.parse(readBuffer)

        subheader = SubHeader()
        subheader.parse(readBuffer)

        readBuffer.compact().flip()

        val decompressedDataBuffer = ByteBuffer.allocate(0xFFFF * 2).order(ByteOrder.LITTLE_ENDIAN).flip()

        blockDecoder@ for (i in 0 until header.blockCount) {
            val block = Block(subheader.buildNumber >= 6089 && subheader.buildNumber != 52240)
            readBuffer.limit(block.headerSize)

            refillBuffer(fileData, readBuffer)
            block.parseHeader(readBuffer)

            readBuffer.limit(readBuffer.limit() + block.dataLength)
            refillBuffer(fileData, readBuffer)
            block.parsePayload(readBuffer)

            // Remove read block from memory
            readBuffer.compact().flip()

            val data = decompress(block.data, block.decompressedBlockSize)

            val currentLimit = decompressedDataBuffer.limit()
            decompressedDataBuffer.limit(currentLimit + data.size)
            decompressedDataBuffer.put(currentLimit, data)

            if (i == 0) {
                if (decompressedDataBuffer.getInt() != REPLAY_COMPRESSED_MAGIC_NUMBER) throw Exception("Compressed header invalid")
            }

            while (true) {
                try {
                    val record = processDecompressedData(decompressedDataBuffer) ?: break
                    records.add(record)
                    record.timestamp = timestamp

                    if (record is TimeSlotRecord) {
                        timestamp += record.timeIncrement.toLong()
                    }
                } catch (_: EOFException) {
                    break@blockDecoder
                } catch (e: Exception) {
                    throw Exception(e)
                }
            }

            val oldRemaining = decompressedDataBuffer.remaining()
            decompressedDataBuffer.compact().flip().limit(oldRemaining)
        }

    }

    companion object {
        private const val REPLAY_MAGIC_HEADER = "Warcraft III recorded game\u001A"
        private val REPLAY_MAGIC_HEADER_LENGTH = REPLAY_MAGIC_HEADER.toByteArray(StandardCharsets.UTF_8).size

        private const val REPLAY_COMPRESSED_MAGIC_NUMBER = 272

        private fun decompress(data: ByteArray, decompressedSize: Int): ByteArray {
            val inflater = Inflater()
            inflater.setInput(data)

            val decompressedData = ByteArray(decompressedSize)

            try {
                val count = inflater.inflate(decompressedData)
                if (count != decompressedSize) throw Exception("fuck")
            } finally {
                inflater.end()
            }

            return decompressedData
        }


        private fun refillBuffer(stream: InputStream, byteBuffer: ByteBuffer) {
            val streamReadBuffer = ByteArray(1024)

            val startPosition = byteBuffer.position()

            while (byteBuffer.remaining() > 0) {
                val bytesRead = stream.read(
                    streamReadBuffer, 0, min(streamReadBuffer.size.toDouble(), byteBuffer.remaining().toDouble())
                        .toInt()
                )
                byteBuffer.put(streamReadBuffer, 0, bytesRead)
            }

            byteBuffer.position(startPosition)
        }
    }
}
