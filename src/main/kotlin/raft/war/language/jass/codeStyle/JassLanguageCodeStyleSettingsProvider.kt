package raft.war.language.jass.codeStyle

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
import raft.war.language.jass.formatting.JassCodeStyleSettings
import raft.war.language.jass.formatting.panel.JassAlignTokenPanel
import raft.war.language.jass.formatting.panel.JassCodeStyleMainPanel
import raft.war.language.jass.lang.JassLanguage.Companion.instance

internal class JassLanguageCodeStyleSettingsProvider : LanguageCodeStyleSettingsProvider() {
    override fun createCustomSettings(settings: CodeStyleSettings): CustomCodeStyleSettings {
        return JassCodeStyleSettings(settings)
    }

    override fun createConfigurable(
        settings: CodeStyleSettings,
        modelSettings: CodeStyleSettings
    ): CodeStyleConfigurable {
        return object : CodeStyleAbstractConfigurable(settings, modelSettings, instance.displayName) {
            override fun createPanel(settings: CodeStyleSettings): CodeStyleAbstractPanel =
                JassCodeStyleMainPanel(currentSettings, settings)

            override fun getHelpTopic(): String = "JASS Help Topic"
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
                addToGroup(
                    consumer, arrayOf(
                        Pair.of(JassCodeStyleSettings::AT_TYPE_DECL_EXTENDS.name, "'extends' keyword"),
                        Pair.of(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_RIGHT.name, "Type right align"),
                        Pair.of(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_BASE_RIGHT.name, "Base type right align")
                    ), JassAlignTokenPanel.GROUP_TYPE_DECL
                )

                addToGroup(
                    consumer, arrayOf(
                        Pair.of(JassCodeStyleSettings::AT_NATIVE_DECL_NATIVE.name, "'native' keyword"),
                        Pair.of(JassCodeStyleSettings::AT_NATIVE_DECL_NAME.name, "Name"),
                        Pair.of(JassCodeStyleSettings::AT_NATIVE_DECL_NAME_RIGHT.name, "Name right align"),
                        Pair.of(JassCodeStyleSettings::AT_NATIVE_DECL_TAKES.name, "'takes' keyword"),
                        Pair.of(JassCodeStyleSettings::AT_NATIVE_DECL_ARGUMENT.name, "Arguments"),
                        Pair.of(JassCodeStyleSettings::AT_NATIVE_DECL_RETURNS.name, "'returns' keyword"),
                    ), JassAlignTokenPanel.GROUP_NATIVE_DECL
                )

                addToGroup(
                    consumer, arrayOf(
                        Pair.of(JassCodeStyleSettings::AT_GVAR_TYPE.name, "Type"),
                        Pair.of(JassCodeStyleSettings::AT_GVAR_TYPE_RIGHT.name, "Type right align"),
                        Pair.of(JassCodeStyleSettings::AT_GVAR_ARRAY.name, "'array' keyword"),
                        Pair.of(JassCodeStyleSettings::AT_GVAR_NAME.name, "Name"),
                        Pair.of(JassCodeStyleSettings::AT_GVAR_NAME_RIGHT.name, "Name right align"),
                        Pair.of(JassCodeStyleSettings::AT_GVAR_ASSIGN.name, "'=' token"),
                    ), JassAlignTokenPanel.GROUP_GVAR
                )
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
            
            """.trimIndent()

}

private fun addToGroup(
    consumer: CodeStyleSettingsCustomizable,
    list: Array<Pair<String, String>>,
    group: String
) {
    for (pair in list) {
        consumer.showCustomOption(JassCodeStyleSettings::class.java, pair.first, pair.second, group)
    }
}
