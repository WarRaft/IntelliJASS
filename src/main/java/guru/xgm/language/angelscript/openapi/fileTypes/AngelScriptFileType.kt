package guru.xgm.language.angelscript.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import guru.xgm.language.angelscript.icons.AngelScriptIcons
import guru.xgm.language.angelscript.lang.AngelScriptLanguage
import javax.swing.Icon

class AngelScriptFileType private constructor() : LanguageFileType(AngelScriptLanguage.instance) {
    override fun getName(): String = AngelScriptLanguage.NAME

    override fun getDescription(): String = AngelScriptLanguage.NAME

    override fun getDefaultExtension(): String = EXTENSION

    override fun getIcon(): Icon = AngelScriptIcons.FILE

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: AngelScriptFileType = AngelScriptFileType()
        const val EXTENSION: String = "as"
    }
}
