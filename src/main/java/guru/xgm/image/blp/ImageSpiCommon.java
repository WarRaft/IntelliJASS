package guru.xgm.image.blp;

abstract class ImageSpiCommon {
	// file format specification
	static final String VENDOR = "Hive Workshop";
	static final String VERSION = "1.2";
	static final String[] FORMAT_NAMES = { "BLP", "blp" };
	static final String[] FORMAT_SUFFIXES = { "blp" };
	static final String[] FORMAT_MIMES = { "image/blp" };

	// metadata format specification
	static final boolean STANDARD_STREAM_METADATA_SUPPORT = false;
	static final String NATIVE_STREAM_METADATA_NAME = null;
	static final String NATIVE_STREAM_METADATA_CLASS = null;
	static final String[] EXTRA_STREAM_METADATA_NAME = null;
	static final String[] EXTRA_STREAM_METADATA_CLASS = null;
	static final boolean STANDARD_IMAGE_METADATA_SUPPORT = false;
	static final String NATIVE_IMAGE_METADATA_NAME = null;
	static final String NATIVE_IMAGE_METADATA_CLASS = null;
	static final String[] EXTRA_IMAGE_METADATA_NAME = null;
	static final String[] EXTRA_IMAGE_METADATA_CLASS = null;
}
