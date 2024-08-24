package raft.war.language.angelscript

import com.intellij.openapi.fileTypes.LanguageFileType
import raft.war.language.angelscript.icons.AngelScriptIcons
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
