package guru.xgm.angelscript.formatting.panel;

import com.intellij.application.options.TabbedLanguageCodeStylePanel;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider;
import guru.xgm.angelscript.lang.ZincLanguage;

public class ZincCodeStyleMainPanel extends TabbedLanguageCodeStylePanel {
    public ZincCodeStyleMainPanel(CodeStyleSettings currentSettings, CodeStyleSettings settings) {
        super(ZincLanguage.INSTANCE, currentSettings, settings);
    }

    @Override
    protected void initTabs(CodeStyleSettings settings) {
        super.initTabs(settings);
        for (CodeStyleSettingsProvider provider : CodeStyleSettingsProvider.EXTENSION_POINT_NAME.getExtensionList()) {
            if (provider.getLanguage() == ZincLanguage.INSTANCE && !provider.hasSettingsPage()) {
                createTab(provider);
            }
        }
    }
}
