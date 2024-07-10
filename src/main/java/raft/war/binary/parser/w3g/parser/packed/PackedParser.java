package raft.war.binary.parser.w3g.parser.packed;

import raft.war.binary.parser.w3g.parser.exceptions.PackedFormatException;
import raft.war.binary.parser.w3g.parser.utils.ByteBufferUtil;

import java.io.*;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Predicate;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

public abstract class PackedParser<P> {

    private static final String REPLAY_MAGIC_HEADER = "Warcraft III recorded game\u001A";
    private static final int REPLAY_MAGIC_HEADER_LENGTH = REPLAY_MAGIC_HEADER.getBytes(StandardCharsets.UTF_8).length;

    private static final int REPLAY_COMPRESSED_MAGIC_NUMBER = 272;

    protected abstract IRecordParser<P> createRecordParser();

    private static byte[] decompress(byte[] data) {
        return data;
    }

    protected PackedResult<P> parsePacked(byte[] bytes) throws IOException, PackedFormatException, DataFormatException {
        return this.parsePackedInternal(bytes, null);
    }

    private PackedResult<P> parsePackedInternal(byte[] bytes, Predicate<Object> dataConsumer) throws IOException, PackedFormatException,
            DataFormatException {
        ByteBuffer readBuffer = ByteBuffer.allocate(0xFFFF).order(ByteOrder.LITTLE_ENDIAN);

        // Packed header data
        readBuffer.limit(REPLAY_MAGIC_HEADER_LENGTH + 41);

        InputStream fileData = new ByteArrayInputStream(bytes);

        refillBuffer(fileData, readBuffer);

        if (!REPLAY_MAGIC_HEADER.equals(ByteBufferUtil.readUtf8CString(readBuffer)))
            throw new PackedFormatException("Invalid file header");

        Header header = new Header();
        SubHeader subHeader = new SubHeader();
        header.parse(readBuffer);
        subHeader.parse(readBuffer);

        if (dataConsumer != null) {
            boolean isBreak = !dataConsumer.test(header);
            isBreak = isBreak || !dataConsumer.test(subHeader);

            if (isBreak)
                return null;
        }

        // Remove headers from buffer
        readBuffer.compact().flip();

        ByteBuffer decompressedDataBuffer = ByteBuffer.allocate(0xFFFF * 2).order(ByteOrder.LITTLE_ENDIAN).flip();

        IRecordParser<P> recordParser = createRecordParser();

        List<IRecord> records = new LinkedList<>();

        blockDecoder:
        for (int i = 0; i < header.getBlockCount(); ++i) {
            Block block = new Block(subHeader.getBuildNumber() >= 6089 && subHeader.getBuildNumber() != 52240);
            readBuffer.limit(block.getHeaderSize());

            refillBuffer(fileData, readBuffer);
            block.parseHeader(readBuffer);

            readBuffer.limit(readBuffer.limit() + block.getDataLength());
            refillBuffer(fileData, readBuffer);
            block.parsePayload(readBuffer);

            // Remove read block from memory
            readBuffer.compact().flip();

            byte[] data = decompress(block.getData(), block.getDecompressedBlockSize());

            int currentLimit = decompressedDataBuffer.limit();
            decompressedDataBuffer.limit(currentLimit + data.length);
            decompressedDataBuffer.put(currentLimit, data);

            if (i == 0) {
                if (decompressedDataBuffer.getInt() != REPLAY_COMPRESSED_MAGIC_NUMBER)
                    throw new PackedFormatException("Compressed header invalid");
            }

            while (true) {
                try {
                    IRecord result = recordParser.processDecompressedData(decompressedDataBuffer);
                    if (result == null)
                        break;

                    records.add(result);

                    if (dataConsumer != null) {
                        if (!dataConsumer.test(result))
                            return null;
                    } else
                        recordParser.saveRecord(result);

                } catch (EOFException e) {
                    break blockDecoder;
                } catch (Exception e) {
                    throw new PackedFormatException(e);
                }
            }

            int oldRemaining = decompressedDataBuffer.remaining();
            decompressedDataBuffer.compact().flip().limit(oldRemaining);

        }

        if (dataConsumer != null)
            return null;

        return new PackedResult<P>().setHeader(header).setSubHeader(subHeader).setPayload(recordParser.getPayload()).setRecords(records);
    }

    private static byte[] decompress(byte[] data, int decompressedSize) throws DataFormatException, PackedFormatException {
        Inflater inflater = new Inflater();
        inflater.setInput(data);

        byte[] decompressedData = new byte[decompressedSize];

        try {
            int count = inflater.inflate(decompressedData);

            if (count != decompressedSize)
                throw new PackedFormatException("");
        } finally {
            inflater.end();
        }

        return decompressedData;
    }

    private static byte[] compress(byte[] data) {
        Deflater deflater = new Deflater();
        deflater.setInput(data);

        try {
            byte[] buffer = new byte[data.length + 10];

            int count = deflater.deflate(buffer);
            return Arrays.copyOf(buffer, count);

        } finally {
            deflater.end();
        }
    }

    private static void refillBuffer(InputStream stream, ByteBuffer byteBuffer) throws IOException {
        byte[] streamReadBuffer = new byte[1024];

        int startPosition = byteBuffer.position();

        while (byteBuffer.remaining() > 0) {
            int bytesRead = stream.read(streamReadBuffer, 0, Math.min(streamReadBuffer.length, byteBuffer.remaining()));
            byteBuffer.put(streamReadBuffer, 0, bytesRead);
        }

        byteBuffer.position(startPosition);
    }
}
