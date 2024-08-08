package raft.war.language.angelscript.formatting.panel

import com.intellij.application.options.codeStyle.OptionTreeWithPreviewPanel
import com.intellij.lang.Language
import com.intellij.openapi.fileTypes.FileType
import com.intellij.openapi.util.NlsContexts
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider
import raft.war.language.angelscript.lang.AngelScriptLanguage
import raft.war.language.angelscript.AngelScriptFileType

class AngelScriptAlignTokenPanel(settings: CodeStyleSettings?) : OptionTreeWithPreviewPanel(settings) {
    init {
        init()
    }

    override fun initTables() = initCustomOptions(ENUM)

    override fun getTabTitle(): @NlsContexts.TabTitle String = "Align Token"

    override fun getSettingsType(): LanguageCodeStyleSettingsProvider.SettingsType {
        return LanguageCodeStyleSettingsProvider.SettingsType.LANGUAGE_SPECIFIC
    }

    override fun customizeSettings() {
        val provider = LanguageCodeStyleSettingsProvider.forLanguage(AngelScriptLanguage.instance)
        provider?.customizeSettings(this, settingsType)
    }

    override fun getFileType(): FileType = AngelScriptFileType.instance

    override fun getDefaultLanguage(): Language = AngelScriptLanguage.instance

    companion object {
        @JvmField
        var ENUM: @NlsContexts.Label String? = "Enum"
    }
}
