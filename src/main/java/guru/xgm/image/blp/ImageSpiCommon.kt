package guru.xgm.image.blp

internal object ImageSpiCommon {

    const val VENDOR: String = "Hive Workshop"
    const val VERSION: String = "1.2"

    @JvmField
    val FORMAT_NAMES: Array<String> = arrayOf("BLP", "blp")

    @JvmField
    val FORMAT_SUFFIXES: Array<String> = arrayOf("blp")

    @JvmField
    val FORMAT_MIMES: Array<String> = arrayOf("image/blp")

    // metadata format specification
    const val STANDARD_STREAM_METADATA_SUPPORT: Boolean = false

    @JvmField
    val NATIVE_STREAM_METADATA_NAME: String? = null

    @JvmField
    val NATIVE_STREAM_METADATA_CLASS: String? = null

    @JvmField
    val EXTRA_STREAM_METADATA_NAME: Array<String>? = null

    @JvmField
    val EXTRA_STREAM_METADATA_CLASS: Array<String>? = null
    const val STANDARD_IMAGE_METADATA_SUPPORT: Boolean = false

    @JvmField
    val NATIVE_IMAGE_METADATA_NAME: String? = null

    @JvmField
    val NATIVE_IMAGE_METADATA_CLASS: String? = null

    @JvmField
    val EXTRA_IMAGE_METADATA_NAME: Array<String>? = null

    @JvmField
    val EXTRA_IMAGE_METADATA_CLASS: Array<String>? = null
}
