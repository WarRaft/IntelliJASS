package guru.xgm.image.blp;

import static guru.xgm.image.blp.BlpImageSpiCommon.*;

import java.io.File;
import java.nio.file.Path;
import java.util.Locale;

import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriter;
import javax.imageio.spi.ImageWriterSpi;
import javax.imageio.stream.ImageOutputStream;

/**
 * Service provider for BLP image file ImageWriter.
 *
 * @author Imperial Good
 */
public class BlpWriterSpi extends ImageWriterSpi {
    static final String WRITER_CLASS = "guru.xgm.image.blp.BlpWriter";
    static final Class<?>[] OUTPUT_TYPES = {ImageOutputStream.class,
            File.class, Path.class};
    static final String[] READER_SPI_CLASSES = {"guru.xgm.image.blp.BlpReaderSpi"};

    public BlpWriterSpi() {
        super(VENDOR, VERSION, FORMAT_NAMES, FORMAT_SUFFIXES, FORMAT_MIMES,
                WRITER_CLASS, OUTPUT_TYPES, READER_SPI_CLASSES,
                STANDARD_STREAM_METADATA_SUPPORT, NATIVE_STREAM_METADATA_NAME,
                NATIVE_STREAM_METADATA_CLASS, EXTRA_STREAM_METADATA_NAME,
                EXTRA_STREAM_METADATA_CLASS, STANDARD_IMAGE_METADATA_SUPPORT,
                NATIVE_IMAGE_METADATA_NAME, NATIVE_IMAGE_METADATA_CLASS,
                EXTRA_IMAGE_METADATA_NAME, EXTRA_IMAGE_METADATA_CLASS);
    }

    @Override
    public boolean canEncodeImage(ImageTypeSpecifier type) {
        // not at all strict for maximum usability
        return true;
    }

    @Override
    public ImageWriter createWriterInstance(Object extension) {
        return new BlpWriter(this);
    }

    @Override
    public String getDescription(Locale locale) {
        return "BLP file image writer.";
    }

}
