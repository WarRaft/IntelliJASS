package guru.xgm.language.zinc.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import guru.xgm.language.zinc.icons.ZincIcons
import guru.xgm.language.zinc.lang.ZincLanguage
import javax.swing.Icon

class ZincFileType private constructor() : LanguageFileType(ZincLanguage.instance) {
    override fun getName(): String = ZincLanguage.NAME

    override fun getDescription(): String = ZincLanguage.NAME

    override fun getDefaultExtension(): String = EXTENSION

    override fun getIcon(): Icon = ZincIcons.FILE

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: ZincFileType = ZincFileType()
        const val EXTENSION = "zn"
    }
}
