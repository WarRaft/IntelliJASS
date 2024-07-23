package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.formatting.JassCodeStyleSettings
import raft.war.language.jass.psi.JassTypes.*

class JassGlobalVarBlock(
    myNode: ASTNode,
    alignment: Alignment?,
    indent: Indent?,
    codeStyleSettings: CodeStyleSettings,
    private val alignments: HashMap<String, Alignment>
) : JassBlock(myNode, alignment, indent, codeStyleSettings) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var alignment: Alignment? = null

        if (FormatterUtil.isOneOf(childNode, TYPE_NAME)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_TYPE.name]

        if (FormatterUtil.isOneOf(childNode, ARRAY)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_ARRAY.name]

        if (FormatterUtil.isOneOf(childNode, ID)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_NAME.name]

        if (FormatterUtil.isOneOf(childNode, EQ)) alignment =
            alignments[JassCodeStyleSettings::AT_GVAR_ASSIGN.name]

        if (FormatterUtil.isOneOf(
                childNode,
                CONSTANT,
                ARRAY,
                TYPE_NAME,
                EQ,
                VAR_DEF
            )
        ) return JassGlobalVarBlock(childNode, alignment, null, myCodeStyleSettings, alignments)

        return JassBlock(childNode, alignment, null, myCodeStyleSettings)
    }

    override val spacingBuilder: SpacingBuilder
        get() = super.spacingBuilder
            .around(ARRAY).spacing(1, 1, 0, false, 0)
            .around(TYPE_NAME).spacing(1, 1, 0, false, 0)
            .around(ID).spacing(1, 1, 0, false, 0)


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
