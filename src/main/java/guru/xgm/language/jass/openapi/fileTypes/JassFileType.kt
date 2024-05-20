package guru.xgm.language.jass.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import guru.xgm.language.jass.icons.JassIcons
import guru.xgm.language.jass.lang.JassLanguage
import javax.swing.Icon

class JassFileType : LanguageFileType(JassLanguage.instance) {
    override fun getName(): String {
        return "JASS"
    }

    override fun getDescription(): String {
        return "JASS language file"
    }

    override fun getDefaultExtension(): String {
        return EXTENSION
    }

    override fun getIcon(): Icon {
        return JassIcons.FILE
    }

    companion object {
        val INSTANCE: JassFileType = JassFileType()

        const val EXTENSION: String = "j"
    }
}
