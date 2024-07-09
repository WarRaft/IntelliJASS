package raft.war.language.jass.formatting.panel

import com.intellij.application.options.TabbedLanguageCodeStylePanel
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider
import raft.war.language.jass.JassLanguage.Companion.instance

class JassCodeStyleMainPanel(currentSettings: CodeStyleSettings?, settings: CodeStyleSettings?) :
    TabbedLanguageCodeStylePanel(
        instance, currentSettings, settings!!
    ) {
    override fun initTabs(settings: CodeStyleSettings) {
        super.initTabs(settings)
        addTab(JassAlignTokenPanel(settings))
        for (provider in CodeStyleSettingsProvider.EXTENSION_POINT_NAME.extensionList) {
            if (provider.language === instance && !provider.hasSettingsPage()) {
                createTab(provider)
            }
        }
    }
}
