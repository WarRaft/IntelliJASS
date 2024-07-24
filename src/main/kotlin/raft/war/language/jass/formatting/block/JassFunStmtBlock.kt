package raft.war.language.jass.formatting.block

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import raft.war.language.jass.psi.JassTypes.*

class JassFunStmtBlock(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    codeStyleSettings: CodeStyleSettings?
) : JassBlock(
    myNode, myAlignment, myIndent, codeStyleSettings!!
) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        return JassStmtBlock(childNode, null, Indent.getNormalIndent(), myCodeStyleSettings)
    }

    override fun getChildAttributes(i: Int): ChildAttributes = ChildAttributes(Indent.getNormalIndent(), null)

    override val spacingBuilder: SpacingBuilder
        get() = super.spacingBuilder
            .around(STMT).spacing(1, 1, 1, false, 5)
}
