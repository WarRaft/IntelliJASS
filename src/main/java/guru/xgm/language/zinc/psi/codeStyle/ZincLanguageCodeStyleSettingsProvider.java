package guru.xgm.language.zinc.psi.codeStyle;

import com.intellij.application.options.CodeStyleAbstractConfigurable;
import com.intellij.application.options.CodeStyleAbstractPanel;
import com.intellij.application.options.IndentOptionsEditor;
import com.intellij.application.options.SmartIndentOptionsEditor;
import com.intellij.lang.Language;
import com.intellij.psi.codeStyle.*;
import guru.xgm.language.zinc.formatting.ZincCodeStyleSettings;
import guru.xgm.language.zinc.lang.ZincLanguage;
import guru.xgm.language.zinc.formatting.panel.ZincCodeStyleMainPanel;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.BlankLinesOption.KEEP_BLANK_LINES_IN_DECLARATIONS;
import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.SpacingOption.*;

final class ZincLanguageCodeStyleSettingsProvider extends LanguageCodeStyleSettingsProvider {

    @Override
    public @NotNull CustomCodeStyleSettings createCustomSettings(@NotNull CodeStyleSettings settings) {
        return new ZincCodeStyleSettings(settings);
    }

    @NotNull
    @Override
    public CodeStyleConfigurable createConfigurable(@NotNull CodeStyleSettings settings, @NotNull CodeStyleSettings modelSettings) {
        return new CodeStyleAbstractConfigurable(settings, modelSettings, ZincLanguage.INSTANCE.getDisplayName()) {
            @Override
            protected @NotNull CodeStyleAbstractPanel createPanel(final @NotNull CodeStyleSettings settings) {
                return new ZincCodeStyleMainPanel(getCurrentSettings(), settings);
            }

            @Override
            public String getHelpTopic() {
                return "ZINC Help Topic";
            }
        };
    }

    @NotNull
    @Override
    public Language getLanguage() {
        return ZincLanguage.INSTANCE;
    }

    @Override
    public void customizeSettings(@NotNull CodeStyleSettingsCustomizable consumer, @NotNull SettingsType settingsType) {

        switch (settingsType) {
            case INDENT_SETTINGS -> consumer.showStandardOptions();

            case SPACING_SETTINGS -> consumer.showStandardOptions(
                    SPACE_AFTER_COMMA.name(),
                    SPACE_BEFORE_COMMA.name(),
                    SPACE_AROUND_ASSIGNMENT_OPERATORS.name()
            );
            case BLANK_LINES_SETTINGS -> consumer.showStandardOptions(
                    KEEP_BLANK_LINES_IN_DECLARATIONS.name()
            );
        }
    }

    public @NotNull IndentOptionsEditor getIndentOptionsEditor() {
        return new SmartIndentOptionsEditor();
    }

    @Override
    protected void customizeDefaults(@NotNull CommonCodeStyleSettings commonSettings, @NotNull CommonCodeStyleSettings.IndentOptions indentOptions) {
        commonSettings.SPACE_AROUND_ASSIGNMENT_OPERATORS = true;
        commonSettings.SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS = true;

        indentOptions.INDENT_SIZE = 4;
        indentOptions.CONTINUATION_INDENT_SIZE = 4;
        indentOptions.TAB_SIZE = 4;
        indentOptions.USE_TAB_CHARACTER = false;
        indentOptions.SMART_TABS = false;
    }

    @Override
    public String getCodeSample(@NotNull SettingsType settingsType) {
        return """
                libary Shit {
                               
                }
                """;
    }
}
