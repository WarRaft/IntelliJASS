package guru.xgm.language.lni.formatting.panel;

import com.intellij.application.options.TabbedLanguageCodeStylePanel;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider;
import guru.xgm.language.lni.lang.LniLanguage;

public class LniCodeStyleMainPanel extends TabbedLanguageCodeStylePanel {
    public LniCodeStyleMainPanel(CodeStyleSettings currentSettings, CodeStyleSettings settings) {
        super(LniLanguage.Companion.getInstance(), currentSettings, settings);
    }

    @Override
    protected void initTabs(CodeStyleSettings settings) {
        super.initTabs(settings);
        addTab(new LniAlignTokenPanel(settings));
        for (CodeStyleSettingsProvider provider : CodeStyleSettingsProvider.EXTENSION_POINT_NAME.getExtensionList()) {
            if (provider.getLanguage() == LniLanguage.Companion.getInstance() && !provider.hasSettingsPage()) {
                createTab(provider);
            }
        }
    }
}
