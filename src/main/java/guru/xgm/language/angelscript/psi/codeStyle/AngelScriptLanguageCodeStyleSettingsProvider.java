package guru.xgm.language.angelscript.psi.codeStyle;

import com.ibm.icu.impl.Pair;
import com.intellij.application.options.CodeStyleAbstractConfigurable;
import com.intellij.application.options.CodeStyleAbstractPanel;
import com.intellij.application.options.IndentOptionsEditor;
import com.intellij.application.options.SmartIndentOptionsEditor;
import com.intellij.lang.Language;
import com.intellij.psi.codeStyle.*;
import guru.xgm.language.angelscript.formatting.AngelScriptCodeStyleSettings;
import guru.xgm.language.angelscript.formatting.panel.AngelScriptAlignTokenPanel;
import guru.xgm.language.angelscript.formatting.panel.AngelScriptCodeStyleMainPanel;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;

import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.BlankLinesOption.*;
import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.SpacingOption.*;
import static com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.WrappingOrBraceOption.*;
import static guru.xgm.language.angelscript.formatting.AngelScriptCodeStyleSettings.Fields.*;

final class AngelScriptLanguageCodeStyleSettingsProvider extends LanguageCodeStyleSettingsProvider {

    @Override
    public @NotNull CustomCodeStyleSettings createCustomSettings(@NotNull CodeStyleSettings settings) {
        return new AngelScriptCodeStyleSettings(settings);
    }

    @NotNull
    @Override
    public CodeStyleConfigurable createConfigurable(@NotNull CodeStyleSettings settings, @NotNull CodeStyleSettings modelSettings) {
        return new CodeStyleAbstractConfigurable(settings, modelSettings, AngelScriptLanguage.Companion.getInstance().getDisplayName()) {
            @Override
            protected @NotNull CodeStyleAbstractPanel createPanel(final @NotNull CodeStyleSettings settings) {
                return new AngelScriptCodeStyleMainPanel(getCurrentSettings(), settings);
            }

            @Override
            public String getHelpTopic() {
                return "AngelScript Help Topic";
            }
        };
    }

    @NotNull
    @Override
    public Language getLanguage() {
        return AngelScriptLanguage.Companion.getInstance();
    }

    private static void addToGroup(@NotNull CodeStyleSettingsCustomizable consumer, Pair<String, String>[] list, String group) {
        for (var pair : list) {
            consumer.showCustomOption(AngelScriptCodeStyleSettings.class, pair.first, pair.second, group);
        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public void customizeSettings(@NotNull CodeStyleSettingsCustomizable consumer, @NotNull SettingsType settingsType) {

        //consumer.showAllStandardOptions();

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

            case WRAPPING_AND_BRACES_SETTINGS -> consumer.showStandardOptions(
                    CLASS_BRACE_STYLE.name(),
                    METHOD_BRACE_STYLE.name(),
                    BRACE_STYLE.name(),
                    INDENT_CASE_FROM_SWITCH.name()
            );

            case LANGUAGE_SPECIFIC -> {
                addToGroup(consumer, new Pair[]{
                        Pair.of(AT_ENUM_EQ, "'=' token"),
                }, AngelScriptAlignTokenPanel.ENUM);
            }
        }
    }

    public @NotNull IndentOptionsEditor getIndentOptionsEditor() {
        return new SmartIndentOptionsEditor();
    }

    @Override
    protected void customizeDefaults(@NotNull CommonCodeStyleSettings commonSettings, @NotNull CommonCodeStyleSettings.IndentOptions indentOptions) {
        indentOptions.INDENT_SIZE = 4;
        indentOptions.CONTINUATION_INDENT_SIZE = 4;
        indentOptions.TAB_SIZE = 4;
        indentOptions.USE_TAB_CHARACTER = false;
        indentOptions.SMART_TABS = false;
    }

    @Override
    public String getCodeSample(@NotNull SettingsType settingsType) {
        return """
                namespace MyNamespace {
                enum MyEnum {
                    A,
                    B = 20,
                    MyEnumItem = 31,
                }
                }

                int myFunc (int a, float b, string c)
                {
                    float d = 13;
                    int e = 56;
                    int d = anotherFunc(10, 2.f, "somevalue");

                    switch( value )
                    {
                        case 0:
                        case 1:
                            a = 1;
                            break;
                        case 2:
                            {
                                int b = 2;
                            }
                        case constant_value:
                            break;
                        default:
                    }

                    while (a < 10)
                    {
                        a += 20;
                        if (e < 41)
                        {
                            c = "a";
                        }
                        else if (e < 10)
                        {
                            c = "b";
                        }
                        else
                        {
                            c = "c";
                        }
                    }
                }
                
                class Group {
                    ~Group() {
                        DestroyGroup(g);
                    }

                    private group g = CreateGroup();

                    unit get_opIndex(int index) const {
                        return GroupGetUnitByIndex(g, index);
                    }

                    void clear() {
                        GroupClear();
                    }
                }
                """;
    }
}
