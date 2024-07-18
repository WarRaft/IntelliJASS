package raft.war.language.angelscript.psi.codeStyle

import com.ibm.icu.impl.Pair
import com.intellij.application.options.CodeStyleAbstractConfigurable
import com.intellij.application.options.CodeStyleAbstractPanel
import com.intellij.application.options.IndentOptionsEditor
import com.intellij.application.options.SmartIndentOptionsEditor
import com.intellij.lang.Language
import com.intellij.psi.codeStyle.*
import com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.*
import com.intellij.psi.codeStyle.CommonCodeStyleSettings.IndentOptions
import raft.war.language.angelscript.formatting.AngelScriptCodeStyleSettings
import raft.war.language.angelscript.formatting.panel.AngelScriptAlignTokenPanel
import raft.war.language.angelscript.formatting.panel.AngelScriptCodeStyleMainPanel
import raft.war.language.angelscript.lang.AngelScriptLanguage.Companion.instance

internal class AngelScriptLanguageCodeStyleSettingsProvider : LanguageCodeStyleSettingsProvider() {
    override fun createCustomSettings(settings: CodeStyleSettings): CustomCodeStyleSettings =
        AngelScriptCodeStyleSettings(settings)

    override fun createConfigurable(
        settings: CodeStyleSettings,
        modelSettings: CodeStyleSettings
    ): CodeStyleConfigurable {
        return object : CodeStyleAbstractConfigurable(settings, modelSettings, instance.displayName) {
            override fun createPanel(settings: CodeStyleSettings): CodeStyleAbstractPanel =
                AngelScriptCodeStyleMainPanel(currentSettings, settings)

            override fun getHelpTopic(): String = "AngelScript Help Topic"
        }
    }

    override fun getLanguage(): Language {
        return instance
    }

    override fun customizeSettings(consumer: CodeStyleSettingsCustomizable, settingsType: SettingsType) {
        //consumer.showAllStandardOptions();

        when (settingsType) {
            SettingsType.INDENT_SETTINGS -> consumer.showStandardOptions()
            SettingsType.SPACING_SETTINGS -> consumer.showStandardOptions(
                SpacingOption.SPACE_AFTER_COMMA.name,
                SpacingOption.SPACE_BEFORE_COMMA.name,
                SpacingOption.SPACE_AROUND_ASSIGNMENT_OPERATORS.name
            )

            SettingsType.BLANK_LINES_SETTINGS -> consumer.showStandardOptions(
                BlankLinesOption.KEEP_BLANK_LINES_IN_DECLARATIONS.name
            )

            SettingsType.WRAPPING_AND_BRACES_SETTINGS -> consumer.showStandardOptions(
                WrappingOrBraceOption.CLASS_BRACE_STYLE.name,
                WrappingOrBraceOption.METHOD_BRACE_STYLE.name,
                WrappingOrBraceOption.BRACE_STYLE.name,
                WrappingOrBraceOption.INDENT_CASE_FROM_SWITCH.name
            )

            SettingsType.LANGUAGE_SPECIFIC -> {
                addToGroup(
                    consumer, arrayOf(
                        Pair.of(AngelScriptCodeStyleSettings::AT_ENUM_EQ.name, "'=' token"),
                    ), AngelScriptAlignTokenPanel.ENUM
                )
            }

            SettingsType.COMMENTER_SETTINGS -> {}
        }
    }

    override fun getIndentOptionsEditor(): IndentOptionsEditor {
        return SmartIndentOptionsEditor()
    }

    override fun customizeDefaults(commonSettings: CommonCodeStyleSettings, indentOptions: IndentOptions) {
        indentOptions.INDENT_SIZE = 4
        indentOptions.CONTINUATION_INDENT_SIZE = 4
        indentOptions.TAB_SIZE = 4
        indentOptions.USE_TAB_CHARACTER = false
        indentOptions.SMART_TABS = false
    }

    override fun getCodeSample(settingsType: SettingsType): String = """
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
            
            """.trimIndent()

}

private fun addToGroup(
    consumer: CodeStyleSettingsCustomizable,
    list: Array<Pair<String, String>>,
    group: String?
) {
    for (pair in list) {
        consumer.showCustomOption(AngelScriptCodeStyleSettings::class.java, pair.first, pair.second, group)
    }
}
