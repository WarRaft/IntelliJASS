package raft.war.language.jass.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import raft.war.language.jass.icons.JassIcons
import raft.war.language.jass.lang.JassLanguage
import javax.swing.Icon

// https://plugins.jetbrains.com/docs/intellij/language-and-filetype.html

class JassFileType : LanguageFileType(JassLanguage.instance) {

    override fun getName(): String = JassLanguage.NAME
    override fun getDescription(): String = JassLanguage.NAME
    override fun getDefaultExtension(): String = EXTENSION
    override fun getIcon(): Icon = JassIcons.FILE

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: JassFileType = JassFileType()

        const val EXTENSION: String = "j"
    }
}
