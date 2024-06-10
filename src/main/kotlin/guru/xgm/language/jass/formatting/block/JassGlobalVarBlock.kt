package guru.xgm.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.jass.formatting.JassCodeStyleSettings
import guru.xgm.language.jass.psi.JassTypes

class JassGlobalVarBlock(
    myNode: ASTNode,
    alignment: Alignment?,
    indent: Indent?,
    codeStyleSettings: CodeStyleSettings,
    private val alignments: HashMap<String, Alignment>
) : JassBlock(myNode, alignment, indent, codeStyleSettings) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var alignment: Alignment? = null

        if (FormatterUtil.isOneOf(childNode, JassTypes.TYPE_NAME)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_TYPE.name]

        if (FormatterUtil.isOneOf(childNode, JassTypes.ARRAY)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_ARRAY.name]

        if (FormatterUtil.isOneOf(childNode, JassTypes.ID)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_NAME.name]

        if (FormatterUtil.isOneOf(childNode, JassTypes.EQ)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_ASSIGN.name]

        if (FormatterUtil.isOneOf(
                childNode,
                JassTypes.CONSTANT,
                JassTypes.ARRAY,
                JassTypes.TYPE_NAME,
                JassTypes.EQ,
                JassTypes.VAR
            )
        ) return JassGlobalVarBlock(childNode, alignment, null, myCodeStyleSettings, alignments)

        return JassBlock(childNode, alignment, null, myCodeStyleSettings)
    }

    override val spacingBuilder: SpacingBuilder?
        get() = super.spacingBuilder
            ?.around(JassTypes.ARRAY)?.spacing(1, 1, 0, false, 0)
            ?.around(JassTypes.TYPE_NAME)?.spacing(1, 1, 0, false, 0)
            ?.around(JassTypes.ID)?.spacing(1, 1, 0, false, 0)


    companion object {
        @JvmStatic
        fun getAlignments(jass: JassCodeStyleSettings): HashMap<String, Alignment> {
            val map = HashMap<String, Alignment>()

            if (jass.AT_GVAR_TYPE || jass.AT_GVAR_TYPE_RIGHT) map[JassCodeStyleSettings::AT_GVAR_TYPE.name] =
                Alignment.createAlignment(
                    true,
                    if (jass.AT_GVAR_TYPE_RIGHT) Alignment.Anchor.RIGHT else Alignment.Anchor.LEFT
                )
            if (jass.AT_GVAR_ARRAY) map[JassCodeStyleSettings::AT_GVAR_ARRAY.name] = Alignment.createAlignment(true)
            if (jass.AT_GVAR_NAME || jass.AT_GVAR_NAME_RIGHT) map[JassCodeStyleSettings::AT_GVAR_NAME.name] =
                Alignment.createAlignment(
                    true,
                    if (jass.AT_GVAR_NAME_RIGHT) Alignment.Anchor.RIGHT else Alignment.Anchor.LEFT
                )
            if (jass.AT_GVAR_ASSIGN) map[JassCodeStyleSettings::AT_GVAR_ASSIGN.name] = Alignment.createAlignment(true)

            return map
        }
    }
}
