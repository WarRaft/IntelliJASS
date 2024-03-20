package guru.xgm.language.lni.psi.codeStyle;

import com.ibm.icu.impl.Pair;
import com.intellij.application.options.CodeStyleAbstractConfigurable;
import com.intellij.application.options.CodeStyleAbstractPanel;
import com.intellij.application.options.IndentOptionsEditor;
import com.intellij.application.options.SmartIndentOptionsEditor;
import com.intellij.lang.Language;
import com.intellij.psi.codeStyle.*;
import guru.xgm.language.lni.formatting.LniCodeStyleSettings;
import guru.xgm.language.lni.formatting.panel.LniAlignTokenPanel;
import guru.xgm.language.lni.formatting.panel.LniCodeStyleMainPanel;
import guru.xgm.language.lni.lang.LniLanguage;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.BlankLinesOption.KEEP_BLANK_LINES_IN_DECLARATIONS;
import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.SpacingOption.*;
import static guru.xgm.language.lni.formatting.LniCodeStyleSettings.Fields.*;

final class LniLanguageCodeStyleSettingsProvider extends LanguageCodeStyleSettingsProvider {

    @Override
    public @NotNull CustomCodeStyleSettings createCustomSettings(@NotNull CodeStyleSettings settings) {
        return new LniCodeStyleSettings(settings);
    }

    @NotNull
    @Override
    public CodeStyleConfigurable createConfigurable(@NotNull CodeStyleSettings settings, @NotNull CodeStyleSettings modelSettings) {
        return new CodeStyleAbstractConfigurable(settings, modelSettings, LniLanguage.INSTANCE.getDisplayName()) {
            @Override
            protected @NotNull CodeStyleAbstractPanel createPanel(final @NotNull CodeStyleSettings settings) {
                return new LniCodeStyleMainPanel(getCurrentSettings(), settings);
            }

            @Override
            public String getHelpTopic() {
                return "LNI Help Topic";
            }
        };
    }

    @NotNull
    @Override
    public Language getLanguage() {
        return LniLanguage.INSTANCE;
    }

    private static void addToGroup(@NotNull CodeStyleSettingsCustomizable consumer, Pair<String, String>[] list, String group) {
        for (var pair : list) {
            consumer.showCustomOption(LniCodeStyleSettings.class, pair.first, pair.second, group);
        }
    }

    @SuppressWarnings("unchecked")
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
                addToGroup(consumer, new Pair[]{
                        Pair.of(AT_PROPERTY_EQ, "'=' token"),
                        //Pair.of(AT_TYPE_DECL_TYPE_RIGHT, "Type right align"),
                        //Pair.of(AT_TYPE_DECL_TYPE_BASE_RIGHT, "Base type right align")
                }, LniAlignTokenPanel.GROUP_PROPERTY);

                addToGroup(consumer, new Pair[]{
                        //Pair.of(AT_NATIVE_DECL_NATIVE, "'native' keyword"),
                        //Pair.of(AT_NATIVE_DECL_NAME, "Name"),
                        //Pair.of(AT_NATIVE_DECL_NAME_RIGHT, "Name right align"),
                        //Pair.of(AT_NATIVE_DECL_TAKES, "'takes' keyword"),
                        //Pair.of(AT_NATIVE_DECL_ARGUMENT, "Arguments"),
                        //Pair.of(AT_NATIVE_DECL_RETURNS, "'returns' keyword"),
                }, LniAlignTokenPanel.GROUP_NATIVE_DECL);

                addToGroup(consumer, new Pair[]{
                        //Pair.of(AT_GVAR_TYPE, "Type"),
                        //Pair.of(AT_GVAR_TYPE_RIGHT, "Type right align"),
                        //Pair.of(AT_GVAR_ARRAY, "'array' keyword"),
                        //Pair.of(AT_GVAR_NAME, "Name"),
                        //Pair.of(AT_GVAR_NAME_RIGHT, "Name right align"),
                        //Pair.of(AT_GVAR_ASSIGN, "'=' token"),
                }, LniAlignTokenPanel.GROUP_GVAR);
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
        indentOptions.USE_TAB_CHARACTER = false;
        indentOptions.SMART_TABS = false;
    }

    @Override
    public String getCodeSample(@NotNull SettingsType settingsType) {
        return """
                [ACac]
                string = "value"
                multiline_string = [=[
                "a"
                ]=]
                intlist = {1,2,3,4,}
                stringlist = {
                    "a",
                    "b",
                    "c",
                    "d",
                }
                """;
    }
}
