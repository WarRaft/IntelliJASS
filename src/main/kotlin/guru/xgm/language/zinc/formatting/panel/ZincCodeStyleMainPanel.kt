package guru.xgm.language.zinc.formatting.panel

import com.intellij.application.options.TabbedLanguageCodeStylePanel
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider
import guru.xgm.language.zinc.lang.ZincLanguage

class ZincCodeStyleMainPanel(currentSettings: CodeStyleSettings?, settings: CodeStyleSettings?) :
    TabbedLanguageCodeStylePanel(ZincLanguage.instance, currentSettings, settings!!) {
    override fun initTabs(settings: CodeStyleSettings) {
        super.initTabs(settings)
        for (provider in CodeStyleSettingsProvider.EXTENSION_POINT_NAME.extensionList) {
            if (provider.language === ZincLanguage.instance && !provider.hasSettingsPage()) {
                createTab(provider)
            }
        }
    }
}
