package guru.xgm.language.jass.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import guru.xgm.language.jass.icons.JassIcons
import guru.xgm.language.jass.lang.JassLanguage
import javax.swing.Icon

// https://plugins.jetbrains.com/docs/intellij/language-and-filetype.html

class JassFileType : LanguageFileType(JassLanguage.instance) {
    override fun getName(): String {
        return JassLanguage.NAME
    }

    override fun getDescription(): String {
        return JassLanguage.NAME + " language file"
    }

    override fun getDefaultExtension(): String {
        return EXTENSION
    }

    override fun getIcon(): Icon {
        return JassIcons.FILE
    }

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: JassFileType = JassFileType()

        const val EXTENSION: String = "j"
    }
}
