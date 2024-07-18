package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.psi.AngelScriptTypes.CASE_STMT_LIST

class AngelScriptBlockCase(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlock(myNode, myAlignment, myIndent, settings) {
    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (isOneOf(childNode, CASE_STMT_LIST)) return AngelScriptBlockCaseStmtList(
            childNode,
            null,
            Indent.getNormalIndent(),
            settings
        )

        return super.makeSubBlock(childNode, indent)
    }

    override val spacingBuilder: SpacingBuilder
        get() {
            return super.spacingBuilder.before(CASE_STMT_LIST).spacing(1, 1, 1, true, 1)
        }
}
