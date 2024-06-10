package raft.war.language.zinc.psi.codeStyle

import com.intellij.application.options.CodeStyleAbstractConfigurable
import com.intellij.application.options.CodeStyleAbstractPanel
import com.intellij.application.options.IndentOptionsEditor
import com.intellij.application.options.SmartIndentOptionsEditor
import com.intellij.lang.Language
import com.intellij.psi.codeStyle.*
import com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.BlankLinesOption
import com.intellij.psi.codeStyle.CodeStyleSettingsCustomizable.SpacingOption
import com.intellij.psi.codeStyle.CommonCodeStyleSettings.IndentOptions
import com.intellij.psi.codeStyle.LanguageCodeStyleSettingsProvider.SettingsType.*
import raft.war.language.zinc.formatting.ZincCodeStyleSettings
import raft.war.language.zinc.formatting.panel.ZincCodeStyleMainPanel
import raft.war.language.zinc.lang.ZincLanguage

internal class ZincLanguageCodeStyleSettingsProvider : LanguageCodeStyleSettingsProvider() {
    override fun createCustomSettings(settings: CodeStyleSettings): CustomCodeStyleSettings =
        ZincCodeStyleSettings(settings)

    override fun createConfigurable(
        settings: CodeStyleSettings,
        modelSettings: CodeStyleSettings
    ): CodeStyleConfigurable {
        return object : CodeStyleAbstractConfigurable(settings, modelSettings, ZincLanguage.instance.displayName) {
            override fun createPanel(settings: CodeStyleSettings): CodeStyleAbstractPanel =
                ZincCodeStyleMainPanel(currentSettings, settings)

            override fun getHelpTopic(): String = "ZINC Help Topic"
        }
    }

    override fun getLanguage(): Language = ZincLanguage.instance

    override fun customizeSettings(consumer: CodeStyleSettingsCustomizable, settingsType: SettingsType) {
        when (settingsType) {
            INDENT_SETTINGS -> consumer.showStandardOptions()
            SPACING_SETTINGS -> consumer.showStandardOptions(
                SpacingOption.SPACE_AFTER_COMMA.name,
                SpacingOption.SPACE_BEFORE_COMMA.name,
                SpacingOption.SPACE_AROUND_ASSIGNMENT_OPERATORS.name
            )

            BLANK_LINES_SETTINGS -> consumer.showStandardOptions(
                BlankLinesOption.KEEP_BLANK_LINES_IN_DECLARATIONS.name
            )

            WRAPPING_AND_BRACES_SETTINGS -> {}
            COMMENTER_SETTINGS -> {}
            LANGUAGE_SPECIFIC -> {}
        }
    }

    override fun getIndentOptionsEditor(): IndentOptionsEditor {
        return SmartIndentOptionsEditor()
    }

    override fun customizeDefaults(commonSettings: CommonCodeStyleSettings, indentOptions: IndentOptions) {
        commonSettings.SPACE_AROUND_ASSIGNMENT_OPERATORS = true
        commonSettings.SPACE_AFTER_COMMA_IN_TYPE_ARGUMENTS = true

        indentOptions.INDENT_SIZE = 4
        indentOptions.CONTINUATION_INDENT_SIZE = 4
        indentOptions.TAB_SIZE = 4
        indentOptions.USE_TAB_CHARACTER = false
        indentOptions.SMART_TABS = false
    }

    override fun getCodeSample(settingsType: SettingsType): String {
        return """
                libary Shit {
                               
                }
                
                """.trimIndent()
    }
}
