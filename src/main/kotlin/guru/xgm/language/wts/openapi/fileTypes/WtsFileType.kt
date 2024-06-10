package guru.xgm.language.wts.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import guru.xgm.language.wts.isons.WtsIcons
import guru.xgm.language.wts.lang.WtsLanguage
import javax.swing.Icon

class WtsFileType : LanguageFileType(WtsLanguage.instance) {
    override fun getName(): String = WtsLanguage.NAME

    override fun getDescription(): String = WtsLanguage.NAME

    override fun getDefaultExtension(): String = EXTENSION

    override fun getIcon(): Icon = WtsIcons.FILE

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: WtsFileType = WtsFileType()

        const val EXTENSION: String = "wts"
    }
}
