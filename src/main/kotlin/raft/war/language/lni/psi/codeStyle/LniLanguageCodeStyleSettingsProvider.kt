package raft.war.language.lni.psi.codeStyle

import com.ibm.icu.impl.Pair
import com.intellij.application.options.CodeStyleAbstractConfigurable
import com.intellij.application.options.CodeStyleAbstractPanel
import com.intellij.application.options.IndentOptionsEditor
import com.intellij.application.options.SmartIndentOptionsEditor
import com.intellij.lang.Language
import com.intellij.psi.codeStyle.*
import com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.BlankLinesOption
import com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.SpacingOption
import com.intellij.psi.codeStyle.CommonCodeStyleSettings.IndentOptions
import raft.war.language.lni.formatting.LniCodeStyleSettings
import raft.war.language.lni.formatting.panel.LniAlignTokenPanel
import raft.war.language.lni.formatting.panel.LniCodeStyleMainPanel
import raft.war.language.lni.lang.LniLanguage.Companion.instance

class LniLanguageCodeStyleSettingsProvider : LanguageCodeStyleSettingsProvider() {
    override fun createCustomSettings(settings: CodeStyleSettings): CustomCodeStyleSettings {
        return LniCodeStyleSettings(settings)
    }

    override fun createConfigurable(
        settings: CodeStyleSettings,
        modelSettings: CodeStyleSettings
    ): CodeStyleConfigurable {
        return object : CodeStyleAbstractConfigurable(settings, modelSettings, instance.displayName) {
            override fun createPanel(settings: CodeStyleSettings): CodeStyleAbstractPanel {
                return LniCodeStyleMainPanel(currentSettings, settings)
            }

            override fun getHelpTopic(): String = "LNI Help Topic"
        }
    }

    override fun getLanguage(): Language = instance

    override fun customizeSettings(consumer: CodeStyleSettingsCustomizable, settingsType: SettingsType) {
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

            SettingsType.LANGUAGE_SPECIFIC -> {
                LniAlignTokenPanel.GROUP_PROPERTY?.let {
                    addToGroup(
                        consumer, arrayOf(
                            Pair.of(LniCodeStyleSettings::AT_PROPERTY_EQ.name, "'=' token"),
                            //Pair.of(AT_TYPE_DECL_TYPE_RIGHT, "Type right align"),
                            //Pair.of(AT_TYPE_DECL_TYPE_BASE_RIGHT, "Base type right align")
                        ), it
                    )
                }

                LniAlignTokenPanel.GROUP_NATIVE_DECL?.let {
                    addToGroup(consumer, arrayOf(), it)
                }

                LniAlignTokenPanel.GROUP_GVAR?.let {
                    addToGroup(consumer, arrayOf(), it)
                }
            }

            SettingsType.WRAPPING_AND_BRACES_SETTINGS -> {}
            SettingsType.COMMENTER_SETTINGS -> {}
        }
    }

    override fun getIndentOptionsEditor(): IndentOptionsEditor = SmartIndentOptionsEditor()

    override fun customizeDefaults(commonSettings: CommonCodeStyleSettings, indentOptions: IndentOptions) {
        commonSettings.SPACE_AROUND_ASSIGNMENT_OPERATORS = true
        commonSettings.SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS = true

        indentOptions.INDENT_SIZE = 4
        indentOptions.CONTINUATION_INDENT_SIZE = 4
        indentOptions.TAB_SIZE = 4
        indentOptions.USE_TAB_CHARACTER = false
        indentOptions.SMART_TABS = false
    }

    override fun getCodeSample(settingsType: SettingsType): String = """
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
            
            """.trimIndent()

}

private fun addToGroup(
    consumer: CodeStyleSettingsCustomizable,
    list: Array<Pair<*, *>>,
    group: String
) {
    for (pair in list) {
        consumer.showCustomOption(
            LniCodeStyleSettings::class.java,
            pair.first.toString(),
            pair.second.toString(),
            group
        )
    }
}
