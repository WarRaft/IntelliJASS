package raft.war.table.openapi.fileTypes

import com.intellij.openapi.fileTypes.LanguageFileType
import raft.war.table.openapi.icons.SlkIcons
import raft.war.table.openapi.lang.SlkLanguage
import javax.swing.Icon

// https://plugins.jetbrains.com/docs/intellij/language-and-filetype.html

class SlkFileType : LanguageFileType(SlkLanguage.instance) {

    override fun getName(): String = SlkLanguage.NAME
    override fun getDescription(): String = SlkLanguage.NAME
    override fun getDefaultExtension(): String = EXTENSION
    override fun getIcon(): Icon = SlkIcons.FILE

    @Suppress("CompanionObjectInExtension")
    companion object {
        val instance: SlkFileType = SlkFileType()
        const val EXTENSION: String = "slk"
    }
}
