package guru.xgm.language.lni.formatting.panel

import com.intellij.application.options.TabbedLanguageCodeStylePanel
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider
import guru.xgm.language.lni.lang.LniLanguage.Companion.instance

class LniCodeStyleMainPanel(currentSettings: CodeStyleSettings?, settings: CodeStyleSettings?) :
    TabbedLanguageCodeStylePanel(
        instance, currentSettings, settings!!
    ) {
    override fun initTabs(settings: CodeStyleSettings) {
        super.initTabs(settings)
        addTab(LniAlignTokenPanel(settings))
        for (provider in CodeStyleSettingsProvider.EXTENSION_POINT_NAME.extensionList) {
            if (provider.language === instance && !provider.hasSettingsPage()) {
                createTab(provider)
            }
        }
    }
}
