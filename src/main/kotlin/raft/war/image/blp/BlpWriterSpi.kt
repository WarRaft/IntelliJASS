package raft.war.image.blp

import java.io.File
import java.nio.file.Path
import java.util.Locale
import javax.imageio.ImageTypeSpecifier
import javax.imageio.ImageWriter
import javax.imageio.spi.ImageWriterSpi
import javax.imageio.stream.ImageOutputStream

class BlpWriterSpi : ImageWriterSpi(
    BlpImageSpiCommon.VENDOR,
    BlpImageSpiCommon.VERSION,
    BlpImageSpiCommon.FORMAT_NAMES,
    BlpImageSpiCommon.FORMAT_SUFFIXES,
    BlpImageSpiCommon.FORMAT_MIMES,
    BlpWriter::class.java.getCanonicalName(),
    arrayOf<Class<*>>(ImageOutputStream::class.java, File::class.java, Path::class.java),
    arrayOf<String>(BlpReaderSpi::class.java.getCanonicalName()),
    BlpImageSpiCommon.STANDARD_STREAM_METADATA_SUPPORT,
    BlpImageSpiCommon.NATIVE_STREAM_METADATA_NAME,
    BlpImageSpiCommon.NATIVE_STREAM_METADATA_CLASS,
    BlpImageSpiCommon.EXTRA_STREAM_METADATA_NAME,
    BlpImageSpiCommon.EXTRA_STREAM_METADATA_CLASS,
    BlpImageSpiCommon.STANDARD_IMAGE_METADATA_SUPPORT,
    BlpImageSpiCommon.NATIVE_IMAGE_METADATA_NAME,
    BlpImageSpiCommon.NATIVE_IMAGE_METADATA_CLASS,
    BlpImageSpiCommon.EXTRA_IMAGE_METADATA_NAME,
    BlpImageSpiCommon.EXTRA_IMAGE_METADATA_CLASS
) {
    override fun canEncodeImage(type: ImageTypeSpecifier?): Boolean = true
    override fun createWriterInstance(extension: Any?): ImageWriter = BlpWriter(this)
    override fun getDescription(locale: Locale?): String = "BLP file image writer."
}
