package guru.xgm.image.blp;

import javax.imageio.ImageReadParam;
import javax.imageio.spi.ImageReaderSpi;

/**
 * ImageReadParam for BLP images. Adds functionality to customize decode
 * behavior and to optimize throughput.
 * <p>
 * A JPEG ImageReaderSpi can be specified to generate ImageReaders to decode
 * JPEG content BLP files with. By default a generically obtained JPEG
 * ImageReaderSpi will be used. Useful if multiple JPEG readers are installed
 * and using a specific one is desired or necessary. The JPEG ImageReader
 * returned from the ImageReaderSpi must support the readRaster method.
 * <p>
 * Read operations can also be instructed to be direct read. In this mode all
 * ImageReadParam behavior is ignored and the source BufferedImage is returned
 * directly. When not in direct mode the source BufferedImage is processed using
 * the ImageReadParam into a destination BufferedImage.
 *
 * @author Imperial Good
 */
public class BLPReadParam extends ImageReadParam {
	/**
	 * The JPEG ImageReaderSpi to use to decode JPEG content.
	 */
	protected ImageReaderSpi jpegSpi = null;

	/**
	 * Controls whether ImageReadParam mechanics can be ignored for improved
	 * performance.
	 */
	protected boolean directRead = false;

	/**
	 * Get the ImageReaderSpi used to decode JPEG content BLPs.
	 *
	 * @return the JPEG ImageReaderSpi.
	 */
	public ImageReaderSpi getJPEGSpi() {
		return jpegSpi;
	}

	/**
	 * Set the ImageReaderSpi used to decode JPEG content. This can allow the
	 * ImageReader used to decode JPEG content to be customized for reliability
	 * or performance reasons.
	 * <p>
	 * The ImageReaderSpi must be able to decode JPEG image files. Setting to
	 * null will cause a JPEG ImageReader to be obtained automatically if
	 * installed.
	 *
	 * @param jpegSpi
	 *            the ImageReaderSpi to use for JPEG content.
	 */
	public void setJPEGSpi(ImageReaderSpi jpegSpi) {
		this.jpegSpi = jpegSpi;
	}

	public boolean isDirectRead() {
		return directRead;
	}


	public void setDirectRead(boolean directRead) {
		this.directRead = directRead;
	}

	/**
	 * Constructs a default BLPReadParam.
	 * <p>
	 * The ImageReadParam state is the same as its default constructor. No JPEG
	 * ImageReaderSpi overwrite is set. Direct read mode is disabled.
	 */
	public BLPReadParam() {
	}

}
