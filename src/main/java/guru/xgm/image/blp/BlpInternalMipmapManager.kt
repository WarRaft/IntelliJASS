package guru.xgm.image.blp

import guru.xgm.image.blp.intellij.BlpBundle.message
import java.io.IOException
import java.nio.ByteOrder
import java.util.function.Consumer
import javax.imageio.stream.ImageInputStream
import javax.imageio.stream.ImageOutputStream

/**
 * Object for managing internally stored BLP mipmap data chunks. This is used by
 * BLP version 1 and later.
 *
 *
 * The location and size of mipmap data chunks within a stream are managed.
 * Methods are provided to read or write mipmap data chunks in a stream. Methods
 * are provided to configure mipmap chunk management.
 *
 * @author ImperialGood
 */
internal class BlpInternalMipmapManager {
    private val chunkOffsets = IntArray(BlpCommon.MIPMAP_MAX)
    private val chunkSizes = IntArray(BlpCommon.MIPMAP_MAX)
    private var chunkStreamPos = 0L

    /**
     * Extracts a mipmap data chunk for the requested mipmap level from the
     * given stream and returns it as unprocessed data. A warning handler must
     * be provided to process any warnings that occur during extraction.
     *
     *
     * If the chunk size is too big to process a warning will be emitted and as
     * much data as allowed will be returned. If the chunk extends beyond the
     * EOF a warning will be emitted and as much data as available be be
     * returned.
     *
     *
     * Chunks with 0 size generate no I/O.
     *
     * @param src     stream to source mipmap data chunks from.
     * @param mipmap  the mipmap level.
     * @param warning warning handler function.
     * @return a byte array containing the mipmap data chunk.
     * @throws IOException if an IOException occurs.
     */
    @Throws(IOException::class)
    fun getMipmapDataChunk(
        src: ImageInputStream, mipmap: Int,
        warning: Consumer<String?>
    ): ByteArray {
        val offset = chunkOffsets[mipmap].toLong() and 0xFFFFFFFFL
        val sizeLong = chunkSizes[mipmap].toLong() and 0xFFFFFFFFL

        // process chunk size
        val size: Int
        val sizeMax = Int.MAX_VALUE
        if (sizeLong > sizeMax) {
            warning.accept(message("BadChunkSize", sizeLong, sizeMax))
            size = sizeMax
        } else {
            size = sizeLong.toInt()
        }

        // allocate buffer
        var buff = ByteArray(size)

        // set stream to correct position
        if (size > 0) src.seek(offset)

        // read data
        var len = size
        var off = 0
        while (len > 0) {
            val read = src.read(buff, off, len)

            // end of file before full read
            if (read == -1) {
                warning.accept(message("BadChunkPos", size, off))
                buff = buff.copyOf(off)
                break
            }

            len -= read
            off += read
        }

        return buff
    }

    /**
     * Inserts a mipmap data chunk for the requested mipmap level to the given
     * stream. An empty array can be used to remove chunks.
     *
     *
     * The mipmap data chunk block offset must be set before calling this.
     * Failure to do so may cause file corruption.
     *
     *
     * For best results the mipmaps should be set only once in rising numeric
     * order.
     *
     * @param dst    stream to place mipmap data chunks to.
     * @param mipmap the mipmap level.
     * @param chunk  a byte array containing the mipmap data chunk.
     * @throws IOException if an IOException occurs.
     */
    @Throws(IOException::class)
    fun setMipmapDataChunk(
        dst: ImageOutputStream, mipmap: Int,
        chunk: ByteArray
    ) {
        val len = chunk.size

        // TODO compact/defragment stream

        // chunk logical position
        chunkSizes[mipmap] = len
        val offset = if (len > 0) chunkStreamPos else 0
        if (offset > 0xFFFFFFFFL) throw IOException("Stream offset too big.")
        chunkOffsets[mipmap] = offset.toInt()

        // write chunk
        if (len > 0) {
            dst.seek(chunkStreamPos)
            dst.write(chunk)
        }

        chunkStreamPos += len.toLong()
    }

    /**
     * Set the offset of the mipmap data chunk block to the current stream
     * position.
     *
     *
     * This method is intended to be called before any mipmap data chunks are
     * set. Calling it while any mipmap data chunks are set will result in
     * undefined behavior.
     *
     * @param src stream to place mipmap data chunks to.
     * @throws IOException if an IOException occurs.
     */
    @Throws(IOException::class)
    fun setMipmapDataChunkBlockOffset(src: ImageInputStream) {
        val offset = src.streamPosition
        if (offset > 0xFFFFFFFFL) throw IOException("Stream offset too big.")
        chunkStreamPos = offset
    }

    /**
     * Flushes the stream to the minimum position needed to read the requested
     * mipmap or higher.
     *
     * @param src    stream to flush.
     * @param mipmap the mipmap level.
     * @throws IOException if an IOException occurs.
     */
    @Throws(IOException::class)
    fun flushToMipmap(src: ImageInputStream, mipmap: Int) {
        // find lowest offset to allow the mipmaps to be read
        var pos = Long.MAX_VALUE
        var i = mipmap + 1
        while (i < BlpCommon.MIPMAP_MAX) {
            val newpos = chunkOffsets[i].toLong() and 0xFFFFFFFFL
            if (newpos < pos) pos = newpos
            i += 1
        }

        src.flushBefore(pos)
    }

    @Throws(IOException::class)
    fun readObject(`in`: ImageInputStream) {
        `in`.byteOrder = ByteOrder.LITTLE_ENDIAN

        // read mipmap chunk descriptions
        `in`.readFully(chunkOffsets, 0, chunkOffsets.size)
        `in`.readFully(chunkSizes, 0, chunkSizes.size)

        // find end of mipmap block
        var pos: Long = 0
        var i = 0
        while (i < BlpCommon.MIPMAP_MAX) {
            val newpos = chunkOffsets[i].toLong() and 0xFFFFFFFFL
            if (chunkSizes[i] != 0 && newpos > pos) pos = newpos
            i += 1
        }

        chunkStreamPos = pos
    }

    @Throws(IOException::class)
    fun writeObject(out: ImageOutputStream) {
        out.byteOrder = ByteOrder.LITTLE_ENDIAN

        // write mipmap chunk descriptions
        out.writeInts(chunkOffsets, 0, chunkOffsets.size)
        out.writeInts(chunkSizes, 0, chunkSizes.size)
    }
}
