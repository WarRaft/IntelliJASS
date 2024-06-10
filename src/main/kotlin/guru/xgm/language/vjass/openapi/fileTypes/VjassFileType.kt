package guru.xgm.language.vjass.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import guru.xgm.language.vjass.icons.VjassIcons
import guru.xgm.language.vjass.lang.VjassLanguage
import javax.swing.Icon

class VjassFileType private constructor() : LanguageFileType(VjassLanguage.instance) {
    override fun getName(): String = VjassLanguage.NAME
    override fun getDescription(): String = VjassLanguage.NAME
    override fun getDefaultExtension(): String = EXTENSION
    override fun getIcon(): Icon = VjassIcons.FILE

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: VjassFileType = VjassFileType()
        const val EXTENSION = "vj"
    }
}
