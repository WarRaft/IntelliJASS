package guru.xgm.jgas.psi.codeStyle;

import com.intellij.application.options.CodeStyleAbstractConfigurable;
import com.intellij.application.options.CodeStyleAbstractPanel;
import com.intellij.application.options.TabbedLanguageCodeStylePanel;
import com.intellij.psi.codeStyle.CodeStyleConfigurable;
import com.intellij.psi.codeStyle.CodeStyleSettings;
import com.intellij.psi.codeStyle.CodeStyleSettingsProvider;
import com.intellij.psi.codeStyle.CustomCodeStyleSettings;
import guru.xgm.jgas.lang.Language_JGAS;
import org.jetbrains.annotations.NotNull;

final class CodeStyleSettingsProvider_vJGAS extends CodeStyleSettingsProvider {
    @Override
    public CustomCodeStyleSettings createCustomSettings(@NotNull CodeStyleSettings settings) {
        return new CustomCodeStyleSettings_JGAS(settings);
    }

    @Override
    public @NotNull String getConfigurableDisplayName() {
        return "JGAS";
    }

    @NotNull
    public CodeStyleConfigurable createConfigurable(@NotNull CodeStyleSettings settings,
                                                    @NotNull CodeStyleSettings modelSettings) {
        return new CodeStyleAbstractConfigurable(settings, modelSettings, this.getConfigurableDisplayName()) {
            @Override
            protected @NotNull CodeStyleAbstractPanel createPanel(@NotNull CodeStyleSettings settings) {
                return new JassCodeStyleMainPanel(getCurrentSettings(), settings);
            }
        };
    }

    private static class JassCodeStyleMainPanel extends TabbedLanguageCodeStylePanel {

        public JassCodeStyleMainPanel(CodeStyleSettings currentSettings, CodeStyleSettings settings) {
            super(Language_JGAS.INSTANCE, currentSettings, settings);
        }

    }
}
