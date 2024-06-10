package raft.war.language.angelscript.formatting.block.utils

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.angelscript.formatting.block.AngelScriptBlock
import raft.war.language.angelscript.formatting.block.AngelScriptBlockStat
import raft.war.language.angelscript.psi.AngelScriptTypes

abstract class AngelScriptBlockBraceParent(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlock(myNode, myAlignment, myIndent, settings) {
    protected var braceStyle: Int = 0

    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(
                childNode,
                raft.war.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK,
                raft.war.language.angelscript.psi.AngelScriptTypes.CLAZZ_STAT_BLOCK,
                raft.war.language.angelscript.psi.AngelScriptTypes.NSPACE_STAT_BLOCK
            )
        ) return AngelScriptBlockStat(childNode, null, null, settings, braceStyle)
        return super.makeSubBlock(childNode, indent)
    }

    override val spacingBuilder: SpacingBuilder
        get() {
            var sb = super.spacingBuilder
            when (braceStyle) {
                CommonCodeStyleSettings.END_OF_LINE -> {
                    sb = sb
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK).spacing(1, 1, 0, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.CLAZZ_STAT_BLOCK).spacing(1, 1, 0, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.ENUM_STAT_BLOCK).spacing(1, 1, 0, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.SWITCH_STAT_BLOCK).spacing(1, 1, 0, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.NSPACE_STAT_BLOCK).spacing(1, 1, 0, false, 0)
                    sb = sb
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.CLAZZ_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.ENUM_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.SWITCH_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.NSPACE_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                }

                CommonCodeStyleSettings.NEXT_LINE, CommonCodeStyleSettings.NEXT_LINE_IF_WRAPPED, CommonCodeStyleSettings.NEXT_LINE_SHIFTED, CommonCodeStyleSettings.NEXT_LINE_SHIFTED2 -> sb =
                    sb
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.CLAZZ_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.ENUM_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.SWITCH_STAT_BLOCK).spacing(1, 1, 1, false, 0)
                        .before(raft.war.language.angelscript.psi.AngelScriptTypes.NSPACE_STAT_BLOCK).spacing(1, 1, 1, false, 0)
            }
            return sb
        }
}
