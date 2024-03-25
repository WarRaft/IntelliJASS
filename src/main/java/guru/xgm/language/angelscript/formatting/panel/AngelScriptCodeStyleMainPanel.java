package guru.xgm.language.angelscript.formatting.panel;

import com.intellij.application.options.TabbedLanguageCodeStylePanel;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;

public class AngelScriptCodeStyleMainPanel extends TabbedLanguageCodeStylePanel {

    public AngelScriptCodeStyleMainPanel(CodeStyleSettings currentSettings, CodeStyleSettings settings) {
        super(AngelScriptLanguage.INSTANCE, currentSettings, settings);
    }

    @Override
    protected void initTabs(CodeStyleSettings settings) {
        super.initTabs(settings);
        addTab(new AngelScriptAlignTokenPanel(settings));
        for (CodeStyleSettingsProvider provider : CodeStyleSettingsProvider.EXTENSION_POINT_NAME.getExtensionList()) {
            if (provider.getLanguage() == AngelScriptLanguage.INSTANCE && !provider.hasSettingsPage()) {
                createTab(provider);
            }
        }
    }
}
