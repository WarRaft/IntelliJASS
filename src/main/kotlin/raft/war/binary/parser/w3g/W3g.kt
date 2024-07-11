package raft.war.binary.parser.w3g

import raft.war.binary.parser.w3g.parser.exceptions.PackedFormatException
import raft.war.binary.parser.w3g.parser.packed.*
import raft.war.binary.parser.w3g.parser.replay.*
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil
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

    fun parse(bytes: ByteArray): PackedResult {
        val readBuffer = ByteBuffer.allocate(0xFFFF).order(ByteOrder.LITTLE_ENDIAN)

        readBuffer.limit(REPLAY_MAGIC_HEADER_LENGTH + 41)

        val fileData: InputStream = ByteArrayInputStream(bytes)

        refillBuffer(fileData, readBuffer)

        if (REPLAY_MAGIC_HEADER != ByteBufferUtil.readUtf8CString(readBuffer)) throw PackedFormatException("Invalid file header")

        header = Header()
        header.parse(readBuffer)

        subheader = SubHeader()
        subheader.parse(readBuffer)

        readBuffer.compact().flip()

        val decompressedDataBuffer = ByteBuffer.allocate(0xFFFF * 2).order(ByteOrder.LITTLE_ENDIAN).flip()
        val records: MutableList<IRecord> = LinkedList()

        val recordParser = ReplayParserParser()

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
                if (decompressedDataBuffer.getInt() != REPLAY_COMPRESSED_MAGIC_NUMBER) throw PackedFormatException("Compressed header invalid")
            }

            while (true) {
                try {
                    val result = recordParser.processDecompressedData(decompressedDataBuffer) ?: break

                    records.add(result)

                    recordParser.saveRecord(result)
                } catch (e: EOFException) {
                    break@blockDecoder
                } catch (e: Exception) {
                    throw PackedFormatException(e)
                }
            }

            val oldRemaining = decompressedDataBuffer.remaining()
            decompressedDataBuffer.compact().flip().limit(oldRemaining)
        }

        val pr = PackedResult()
        pr.payload = recordParser.replayParserResult
        pr.records = records

        return pr
    }


    class ReplayParserParser {
        val replayParserResult = ReplayParserResult()

        private var time: Long = 0

        fun processDecompressedData(data: ByteBuffer): IRecord? {
            data.mark()

            try {
                val recordId = data.get().toInt()
                val recordClass = recordParsers[recordId]
                    ?: throw PackedFormatException("Unknown record type $recordId")

                val record = recordClass.getConstructor().newInstance()
                record?.parse(data)

                return record
            } catch (e: BufferUnderflowException) {
                data.reset()
                return null // Need More
            }
        }

        fun saveRecord(record: IRecord) {
            when (record) {
                is ChatRecord -> replayParserResult.chatMessages.add(TimeRecord(record, time))
                is GameRecord -> replayParserResult.setGameInfo(record)
                is LeaveRecord -> replayParserResult.playerLeave.add(TimeRecord(record, time))
                is PlayerRecord -> replayParserResult.playerRecords.add(record)
                is StartRecord -> replayParserResult.setStartInfo(record)
                is TimeSlotRecord -> {
                    replayParserResult.actions.add(TimeRecord(record, time))
                    time += record.timeIncrement.toLong()
                }

                else -> replayParserResult.others.add(record)
            }
        }
    }

    companion object {
        private val recordParsers: HashMap<Int?, Class<out IRecord?>?> =
            object : HashMap<Int?, Class<out IRecord?>?>() {
                init {
                    put(GameRecord.TYPE, GameRecord::class.java)
                    put(ChatRecord.TYPE, ChatRecord::class.java)
                    put(ChecksumRecord.TYPE, ChecksumRecord::class.java)
                    put(LeaveRecord.TYPE, LeaveRecord::class.java)
                    put(PlayerRecord.TYPE, PlayerRecord::class.java)
                    put(StartRecord.TYPE, StartRecord::class.java)
                    put(ReforgedRecord.TYPE, ReforgedRecord::class.java)
                    put(TimeSlotRecord.TYPE, TimeSlotRecord::class.java)
                    put(TimeSlot2Record.TYPE, TimeSlot2Record::class.java)
                    put(Unknown1aRecord.TYPE, Unknown1aRecord::class.java)
                    put(Unknown1bRecord.TYPE, Unknown1bRecord::class.java)
                    put(Unknown1cRecord.TYPE, Unknown1cRecord::class.java)
                }
            }

        private const val REPLAY_MAGIC_HEADER = "Warcraft III recorded game\u001A"
        private val REPLAY_MAGIC_HEADER_LENGTH = REPLAY_MAGIC_HEADER.toByteArray(StandardCharsets.UTF_8).size

        private const val REPLAY_COMPRESSED_MAGIC_NUMBER = 272

        private fun decompress(data: ByteArray, decompressedSize: Int): ByteArray {
            val inflater = Inflater()
            inflater.setInput(data)

            val decompressedData = ByteArray(decompressedSize)

            try {
                val count = inflater.inflate(decompressedData)

                if (count != decompressedSize) throw PackedFormatException("")
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
