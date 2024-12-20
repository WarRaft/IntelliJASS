package raft.war.image.blp

import raft.war.image.blp.BlpImageSpiCommon.EXTRA_IMAGE_METADATA_CLASS
import raft.war.image.blp.BlpImageSpiCommon.EXTRA_IMAGE_METADATA_NAME
import raft.war.image.blp.BlpImageSpiCommon.EXTRA_STREAM_METADATA_CLASS
import raft.war.image.blp.BlpImageSpiCommon.EXTRA_STREAM_METADATA_NAME
import raft.war.image.blp.BlpImageSpiCommon.FORMAT_MIMES
import raft.war.image.blp.BlpImageSpiCommon.FORMAT_NAMES
import raft.war.image.blp.BlpImageSpiCommon.FORMAT_SUFFIXES
import raft.war.image.blp.BlpImageSpiCommon.NATIVE_IMAGE_METADATA_CLASS
import raft.war.image.blp.BlpImageSpiCommon.NATIVE_IMAGE_METADATA_NAME
import raft.war.image.blp.BlpImageSpiCommon.NATIVE_STREAM_METADATA_CLASS
import raft.war.image.blp.BlpImageSpiCommon.NATIVE_STREAM_METADATA_NAME
import raft.war.image.blp.BlpImageSpiCommon.STANDARD_IMAGE_METADATA_SUPPORT
import raft.war.image.blp.BlpImageSpiCommon.STANDARD_STREAM_METADATA_SUPPORT
import raft.war.image.blp.BlpImageSpiCommon.VENDOR
import raft.war.image.blp.BlpImageSpiCommon.VERSION
import raft.war.image.blp.legacy.MagicInt
import java.io.File
import java.io.IOException
import java.nio.ByteOrder
import java.nio.file.Path
import java.util.Locale
import javax.imageio.ImageReader
import javax.imageio.spi.ImageReaderSpi
import javax.imageio.stream.ImageInputStream

class BlpReaderSpi : ImageReaderSpi(
    VENDOR,
    VERSION,
    FORMAT_NAMES,
    FORMAT_SUFFIXES,
    FORMAT_MIMES,
    BlpReader::class.java.getCanonicalName(),
    arrayOf<Class<*>>(ImageInputStream::class.java, File::class.java, Path::class.java),
    arrayOf<String>(BlpWriterSpi::class.java.getCanonicalName()),
    STANDARD_STREAM_METADATA_SUPPORT,
    NATIVE_STREAM_METADATA_NAME,
    NATIVE_STREAM_METADATA_CLASS,
    EXTRA_STREAM_METADATA_NAME,
    EXTRA_STREAM_METADATA_CLASS,
    STANDARD_IMAGE_METADATA_SUPPORT,
    NATIVE_IMAGE_METADATA_NAME,
    NATIVE_IMAGE_METADATA_CLASS,
    EXTRA_IMAGE_METADATA_NAME,
    EXTRA_IMAGE_METADATA_CLASS
) {
    override fun canDecodeInput(source: Any?): Boolean {
        if (source !is ImageInputStream) return false
        source.mark()
        val order = source.byteOrder

        try {
            source.byteOrder = ByteOrder.LITTLE_ENDIAN
            val magic = MagicInt(
                source.readInt(),
                ByteOrder.LITTLE_ENDIAN
            )
            if (BlpCommon.resolveVersion(magic) != -1) return true
        } finally {
            source.byteOrder = order
            source.reset()
        }

        return false
    }

    override fun createReaderInstance(extension: Any?): ImageReader = BlpReader(this)
    override fun getDescription(locale: Locale?): String = "BLP file image reader."
}
