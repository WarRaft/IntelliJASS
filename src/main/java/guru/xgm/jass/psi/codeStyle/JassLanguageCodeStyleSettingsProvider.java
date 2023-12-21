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

import java.util.HashMap;
import java.util.Map;

import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.BlankLinesOption.*;
import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.SpacingOption.*;
import static guru.xgm.jass.formatting.JassCodeStyleSettings.Fields.*;

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

    private static void addToGroup(@NotNull CodeStyleSettingsCustomizable consumer, Map<String, String> map, String group) {
        for (var entry : map.entrySet()) {
            consumer.showCustomOption(JassCodeStyleSettings.class, entry.getKey(), entry.getValue(), group);
        }
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
            case LANGUAGE_SPECIFIC -> {
                addToGroup(consumer, new HashMap<>() {{
                    put(AT_TYPE_DECL_EXTENDS, "'extends' keyword");
                    put(AT_TYPE_DECL_TYPE_RIGHT, "Type right align");
                    put(AT_TYPE_DECL_TYPE_BASE_RIGHT, "Base type right align");
                }}, JassAlignTokenPanel.GROUP_TYPE_DECL);

                addToGroup(consumer, new HashMap<>() {{
                    put(AT_NATIVE_DECL_NATIVE, "'native' keyword");
                    put(AT_NATIVE_DECL_NAME, "Name");
                    put(AT_NATIVE_DECL_NAME_RIGHT, "Name right align");
                    put(AT_NATIVE_DECL_TAKES, "'takes' keyword");
                    put(AT_NATIVE_DECL_ARGUMENT, "Arguments");
                    put(AT_NATIVE_DECL_RETURNS, "'returns' keyword");
                }}, JassAlignTokenPanel.GROUP_NATIVE_DECL);

                addToGroup(consumer, new HashMap<>() {{
                    put(AT_GVAR_TYPE, "Type");
                    put(AT_GVAR_NAME, "Name");
                    put(AT_GVAR_ASSIGN, "'=' token");
                }}, JassAlignTokenPanel.GROUP_GVAR);
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
                native CameraSetTargetNoiseEx takes real mag, real velocity, boolean vertOnly returns nothing
                native SetDestructablePositionLocation takes destructable whichDestructable, location whichLocation returns nothing
                               
                                
                globals
                constant boolean TRUE = true
                constant integer JASS_MAX_ARRAY_SIZE = 262144
                constant playercolor PLAYER_COLOR_RED = ConvertPlayerColor(0)
                force array bj_FORCE_PLAYER
                mapcontrol array bj_slotControl
                endglobals
                """;
    }
}
