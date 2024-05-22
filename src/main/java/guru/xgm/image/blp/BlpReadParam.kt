package guru.xgm.image.blp

import javax.imageio.ImageReadParam
import javax.imageio.spi.ImageReaderSpi

/**
 * ImageReadParam for BLP images. Adds functionality to customize decode
 * behavior and to optimize throughput.
 *
 *
 * A JPEG ImageReaderSpi can be specified to generate ImageReaders to decode
 * JPEG content BLP files with. By default a generically obtained JPEG
 * ImageReaderSpi will be used. Useful if multiple JPEG readers are installed
 * and using a specific one is desired or necessary. The JPEG ImageReader
 * returned from the ImageReaderSpi must support the readRaster method.
 *
 *
 * Read operations can also be instructed to be direct read. In this mode all
 * ImageReadParam behavior is ignored and the source BufferedImage is returned
 * directly. When not in direct mode the source BufferedImage is processed using
 * the ImageReadParam into a destination BufferedImage.
 *
 * @author Imperial Good
 */
class BlpReadParam : ImageReadParam() {
    var jPEGSpi: ImageReaderSpi? = null
        private set

    var isDirectRead: Boolean = false
        private set
}
