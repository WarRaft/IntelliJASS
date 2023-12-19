package guru.xgm.jass.psi.codeStyle;

import com.intellij.application.options.CodeStyleAbstractConfigurable;
import com.intellij.application.options.CodeStyleAbstractPanel;
import com.intellij.application.options.IndentOptionsEditor;
import com.intellij.application.options.SmartIndentOptionsEditor;
import com.intellij.lang.Language;
import com.intellij.psi.codeStyle.*;
import guru.xgm.jass.formatting.JassCodeStyleSettings;
import guru.xgm.jass.formatting.panel.JassAlignTokenPanel;
import guru.xgm.jass.formatting.panel.JassCodeStyleMainPanel;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NotNull;

final class JassLanguageCodeStyleSettingsProvider extends LanguageCodeStyleSettingsProvider {

    @Override
    public @NotNull CustomCodeStyleSettings createCustomSettings(@NotNull CodeStyleSettings settings) {
        return new JassCodeStyleSettings(settings);
    }

    @NotNull
    @Override
    public CodeStyleConfigurable createConfigurable(@NotNull CodeStyleSettings settings, @NotNull CodeStyleSettings modelSettings) {
        return new CodeStyleAbstractConfigurable(settings, modelSettings, JassLanguage.INSTANCE.getDisplayName()) {
            @Override
            protected @NotNull CodeStyleAbstractPanel createPanel(final @NotNull CodeStyleSettings settings) {
                return new JassCodeStyleMainPanel(getCurrentSettings(), settings);
            }

            @Override
            public String getHelpTopic() {
                return "JASS Help Topic";
            }
        };
    }

    @NotNull
    @Override
    public Language getLanguage() {
        return JassLanguage.INSTANCE;
    }

    @Override
    public void customizeSettings(@NotNull CodeStyleSettingsCustomizable consumer, @NotNull SettingsType settingsType) {

        switch (settingsType) {
            case INDENT_SETTINGS -> consumer.showStandardOptions();

            case SPACING_SETTINGS -> consumer.showStandardOptions(
                    //"SPACE_AROUND_ASSIGNMENT_OPERATORS",
                    "SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS"
            );
            case BLANK_LINES_SETTINGS -> consumer.showStandardOptions(
                    "KEEP_BLANK_LINES_IN_DECLARATIONS"
            );
            case LANGUAGE_SPECIFIC -> {
                // Type declaration
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_TYPE_DECL_EXTENDS,
                        "'extends' keyword",
                        JassAlignTokenPanel.GROUP_TYPE_DECL
                );
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_TYPE_DECL_TYPE_RIGHT,
                        "Type right align",
                        JassAlignTokenPanel.GROUP_TYPE_DECL
                );
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_TYPE_DECL_TYPE_BASE_RIGHT,
                        "Base type right align",
                        JassAlignTokenPanel.GROUP_TYPE_DECL
                );
                // Native declaration
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_NATIVE_DECL_NATIVE,
                        "'native' keyword",
                        JassAlignTokenPanel.GROUP_NATIVE_DECL
                );
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_NATIVE_DECL_NAME,
                        "Name",
                        JassAlignTokenPanel.GROUP_NATIVE_DECL
                );
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_NATIVE_DECL_NAME_RIGHT,
                        "Name right align",
                        JassAlignTokenPanel.GROUP_NATIVE_DECL
                );
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_NATIVE_DECL_TAKES,
                        "'takes' keyword",
                        JassAlignTokenPanel.GROUP_NATIVE_DECL
                );
                consumer.showCustomOption(JassCodeStyleSettings.class,
                        JassCodeStyleSettings.Fields.AT_NATIVE_DECL_RETURNS,
                        "'returns' keyword",
                        JassAlignTokenPanel.GROUP_NATIVE_DECL
                );
            }
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
        indentOptions.USE_TAB_CHARACTER = true;
    }

    @Override
    public String getCodeSample(@NotNull SettingsType settingsType) {
        return """
                type abilityintegerlevelarrayfield extends handle
                type bonetype extends attachmenttype

                constant native GetCameraBoundMinX takes nothing returns real
                native SetDestructablePositionLocation takes destructable whichDestructable, location whichLocation returns nothing
                               
                                
                globals
                real a = 12.
                    real b = .13
                    
                    constant  real  c =  .14
                endglobals""";
    }
}
