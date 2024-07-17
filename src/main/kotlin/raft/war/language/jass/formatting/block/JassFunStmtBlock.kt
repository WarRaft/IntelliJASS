package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.ChildAttributes
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings

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
}
