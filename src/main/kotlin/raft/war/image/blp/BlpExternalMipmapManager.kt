package raft.war.image.blp

import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path
import javax.imageio.IIOException

/**
 * Object for managing externally stored BLP mipmap data chunks. This is used by
 * BLP0.
 *
 *
 * The retrieval and extraction of mipmap data chunks from accompanying files
 * are managed. Methods are provided to read or write mipmap data chunks.
 *
 * @author ImperialGood
 */
internal class BlpExternalMipmapManager(file: Path) {
    /**
     * Parent folder of the BLP0 file. Where the mipmaps files get saved.
     */
    private val root: Path

    /**
     * The base file name of the BLP0 file. All files for the same BLP0 file
     * share this name.
     */
    private val name: String

    /**
     * Get the file for the specified mipmap level.
     *
     * @param mipmap
     * the mipmap level.
     * @return the file.
     */
    private fun getMipmapFilePath(mipmap: Int): Path {
        return root.resolve(name + String.format(".b%02d", mipmap))
    }

    /**
     * Constructs from a BLP0 file.
     *
     *
     * The Path must represent a file with the '.blp' suffix. The file itself is
     * not manipulated and is assumed to exist.
     *
     */
    init {
        val fileName = file.fileName.toString()

        if (!fileName.endsWith(".blp")) throw IIOException(
            String.format(
                "Malformed file path: Got '%s' expected '*.blp'.",
                file.toString()
            )
        )

        root = file.parent
        name = fileName.substring(0, fileName.length - ".blp".length)
    }

    /**
     * Extracts a mipmap data chunk for the requested mipmap level and returns
     * it as unprocessed data.
     *
     * @param mipmap
     * the mipmap level.
     * @return a byte array containing the mipmap data chunk.
     * if an IOException occurs.
     */
    fun getMipmapDataChunk(mipmap: Int): ByteArray {
        return Files.readAllBytes(getMipmapFilePath(mipmap))
    }

    /**
     * Writes a mipmap data chunk for the requested mipmap level. A null chunk
     * can be used to completely remove saved chunks.
     *
     * @param mipmap
     * the mipmap level.
     * @param chunk
     * a byte array containing the mipmap data chunk.
     * if an IOException occurs.
     */
    fun setMipmapDataChunk(mipmap: Int, chunk: ByteArray?) {
        val filePath = getMipmapFilePath(mipmap)

        if (chunk == null) {
            Files.deleteIfExists(filePath)
            return
        }

        Files.write(filePath, chunk)
    }
}
