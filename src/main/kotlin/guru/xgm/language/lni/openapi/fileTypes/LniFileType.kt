package guru.xgm.language.lni.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import guru.xgm.language.lni.icons.LniIcons
import guru.xgm.language.lni.lang.LniLanguage
import javax.swing.Icon

class LniFileType private constructor() : LanguageFileType(LniLanguage.instance) {
    override fun getName(): String = LniLanguage.NAME
    override fun getDescription(): String = LniLanguage.NAME
    override fun getDefaultExtension(): String = EXTENSION
    override fun getIcon(): Icon = LniIcons.FILE

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: LniFileType = LniFileType()

        const val EXTENSION: String = "lni"
    }
}
