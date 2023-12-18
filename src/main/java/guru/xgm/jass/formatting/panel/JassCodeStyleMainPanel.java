package guru.xgm.jass.formatting.panel;

import com.intellij.application.options.TabbedLanguageCodeStylePanel;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider;
import guru.xgm.jass.lang.JassLanguage;

public class JassCodeStyleMainPanel extends TabbedLanguageCodeStylePanel {
    public JassCodeStyleMainPanel(CodeStyleSettings currentSettings, CodeStyleSettings settings) {
        super(JassLanguage.INSTANCE, currentSettings, settings);
    }

    @Override
    protected void initTabs(CodeStyleSettings settings) {
        super.initTabs(settings);
        addTab(new JassAlignTokenPanel(settings));
        for (CodeStyleSettingsProvider provider : CodeStyleSettingsProvider.EXTENSION_POINT_NAME.getExtensionList()) {
            if (provider.getLanguage() == JassLanguage.INSTANCE && !provider.hasSettingsPage()) {
                createTab(provider);
            }
        }
    }
}
