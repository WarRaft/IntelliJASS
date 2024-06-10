package raft.war.language.lni.formatting.panel

import com.intellij.application.options.codeStyle.OptionTreeWithPreviewPanel
import com.intellij.lang.Language
import com.intellij.openapi.fileTypes.FileType
import com.intellij.openapi.util.NlsContexts
import com.intellij.openapi.util.NlsContexts.TabTitle
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider.SettingsType
import raft.war.language.lni.lang.LniLanguage
import raft.war.language.lni.openapi.fileTypes.LniFileType

class LniAlignTokenPanel(settings: CodeStyleSettings?) : OptionTreeWithPreviewPanel(settings) {
    init {
        init()
    }

    override fun initTables() {
        initCustomOptions(GROUP_PROPERTY)
        initCustomOptions(GROUP_NATIVE_DECL)
        initCustomOptions(GROUP_GVAR)
    }

    override fun getTabTitle(): @TabTitle String = "Align Token"
    override fun getSettingsType(): SettingsType = SettingsType.LANGUAGE_SPECIFIC
    override fun getFileType(): FileType = LniFileType.instance
    override fun getDefaultLanguage(): Language = LniLanguage.instance

    override fun customizeSettings() {
        val provider = LanguageCodeStyleSettingsProvider.forLanguage(LniLanguage.instance)
        provider?.customizeSettings(this, settingsType)
    }

    companion object {
        var GROUP_PROPERTY: @NlsContexts.Label String? = "Property"
        var GROUP_NATIVE_DECL: @NlsContexts.Label String? = "Native declaration"
        var GROUP_GVAR: @NlsContexts.Label String? = "Global variable"
    }
}
