package raft.war.language.jass.formatting.panel

import com.intellij.application.options.codeStyle.OptionTreeWithPreviewPanel
import com.intellij.lang.Language
import com.intellij.openapi.fileTypes.FileType
import com.intellij.openapi.util.NlsContexts
import com.intellij.openapi.util.NlsContexts.TabTitle
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider.SettingsType
import raft.war.language.jass.lang.JassLanguage
import raft.war.language.jass.openapi.fileTypes.JassFileType

class JassAlignTokenPanel(settings: CodeStyleSettings?) : OptionTreeWithPreviewPanel(settings) {
    init {
        init()
    }

    override fun initTables() {
        initCustomOptions(GROUP_TYPE_DECL)
        initCustomOptions(GROUP_NATIVE_DECL)
        initCustomOptions(GROUP_GVAR)
    }

    override fun getTabTitle(): @TabTitle String = "Align Token"

    override fun getSettingsType(): SettingsType = SettingsType.LANGUAGE_SPECIFIC

    override fun customizeSettings() {
        val provider = LanguageCodeStyleSettingsProvider.forLanguage(JassLanguage.instance)
        provider?.customizeSettings(this, settingsType)
    }

    override fun getFileType(): FileType = JassFileType.instance

    override fun getDefaultLanguage(): Language = JassLanguage.instance

    companion object {
        var GROUP_TYPE_DECL: @NlsContexts.Label String = "Type declaration"

        var GROUP_NATIVE_DECL: @NlsContexts.Label String = "Native declaration"

        var GROUP_GVAR: @NlsContexts.Label String = "Global variable"
    }
}
