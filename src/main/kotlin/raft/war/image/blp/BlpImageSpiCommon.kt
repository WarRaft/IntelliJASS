package raft.war.image.blp

internal object BlpImageSpiCommon {
    const val VENDOR: String = "Hive Workshop"
    const val VERSION: String = "1.2"
    val FORMAT_NAMES: Array<String> = arrayOf("BLP", "blp")
    val FORMAT_SUFFIXES: Array<String> = arrayOf("blp")
    val FORMAT_MIMES: Array<String> = arrayOf("image/blp")
    const val STANDARD_STREAM_METADATA_SUPPORT: Boolean = false
    val NATIVE_STREAM_METADATA_NAME: String? = null
    val NATIVE_STREAM_METADATA_CLASS: String? = null
    val EXTRA_STREAM_METADATA_NAME: Array<String>? = null
    val EXTRA_STREAM_METADATA_CLASS: Array<String>? = null
    const val STANDARD_IMAGE_METADATA_SUPPORT: Boolean = false
    val NATIVE_IMAGE_METADATA_NAME: String? = null
    val NATIVE_IMAGE_METADATA_CLASS: String? = null
    val EXTRA_IMAGE_METADATA_NAME: Array<String>? = null
    val EXTRA_IMAGE_METADATA_CLASS: Array<String>? = null
}
