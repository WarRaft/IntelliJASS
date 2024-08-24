package raft.war.language.angelscript.formatting.panel

import com.intellij.application.options.TabbedLanguageCodeStylePanel
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider
import raft.war.language.angelscript.AngelScriptLanguage

class AngelScriptCodeStyleMainPanel(currentSettings: CodeStyleSettings?, settings: CodeStyleSettings?) :
    TabbedLanguageCodeStylePanel(AngelScriptLanguage.instance, currentSettings, settings!!) {
    override fun initTabs(settings: CodeStyleSettings) {
        super.initTabs(settings)
        addTab(AngelScriptAlignTokenPanel(settings))
        for (provider in CodeStyleSettingsProvider.EXTENSION_POINT_NAME.extensionList) {
            if (provider.language === AngelScriptLanguage.instance && !provider.hasSettingsPage()) {
                createTab(provider)
            }
        }
    }
}
