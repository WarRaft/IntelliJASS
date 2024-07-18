package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.Spacing
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK

class AngelScriptBlockCaseStmtList(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlock(myNode, myAlignment, myIndent, settings) {
    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(childNode, STAT_BLOCK)) return AngelScriptBlockStat(
            childNode,
            null,
            Indent.getNormalIndent(),
            settings,
            CommonCodeStyleSettings.NEXT_LINE
        )

        return super.makeSubBlock(childNode, indent)
    }

    override fun getIndent(): Indent? {
        return if (settings.common.INDENT_CASE_FROM_SWITCH) Indent.getNormalIndent() else Indent.getNoneIndent()
    }

    override fun getSpacing(block1: Block?, block2: Block): Spacing? {
        return Spacing.createSpacing(1, 5, 1, true, 5)
    }
}
