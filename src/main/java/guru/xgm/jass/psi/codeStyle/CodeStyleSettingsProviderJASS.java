package guru.xgm.jass.psi.codeStyle;

import com.intellij.application.options.CodeStyleAbstractConfigurable;
import com.intellij.application.options.CodeStyleAbstractPanel;
import com.intellij.application.options.TabbedLanguageCodeStylePanel;
import com.intellij.psi.codeStyle.CodeStyleConfigurable;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;
import guru.xgm.jass.lang.LanguageJASS;
import org.jetbrains.annotations.NotNull;

final class CodeStyleSettingsProviderJASS extends CodeStyleSettingsProvider {

    @Override
    public CustomCodeStyleSettings createCustomSettings(@NotNull CodeStyleSettings settings) {
        return new CustomCodeStyleSettingsJASS(settings);
    }

    @Override
    public @NotNull String getConfigurableDisplayName() {
        return "JASS";
    }

    @NotNull
    public CodeStyleConfigurable createConfigurable(@NotNull CodeStyleSettings settings,
                                                    @NotNull CodeStyleSettings modelSettings) {
        return new CodeStyleAbstractConfigurable(settings, modelSettings, this.getConfigurableDisplayName()) {
            @Override
            protected @NotNull CodeStyleAbstractPanel createPanel(@NotNull CodeStyleSettings settings) {
                return new CodeStyleMainPanelJASS(getCurrentSettings(), settings);
            }
        };
    }

    private static class CodeStyleMainPanelJASS extends TabbedLanguageCodeStylePanel {

        public CodeStyleMainPanelJASS(CodeStyleSettings currentSettings, CodeStyleSettings settings) {
            super(LanguageJASS.INSTANCE, currentSettings, settings);
        }

    }

}
