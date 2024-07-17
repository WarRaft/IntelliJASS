package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.ChildAttributes
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil.*
import raft.war.language.jass.psi.JassTypes.*

class JassFunBlock(
    myNode: ASTNode?,
    myAlignment: Alignment?,
    myIndent: Indent?,
    codeStyleSettings: CodeStyleSettings?
) : JassBlock(
    myNode!!, myAlignment, myIndent, codeStyleSettings!!
) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var indent = Indent.getNormalIndent()

        if (isOneOf(childNode, FUN_STMT)) return JassFunStmtBlock(
            childNode,
            null,
            Indent.getNoneIndent(),
            myCodeStyleSettings
        )

        if (isOneOf(childNode, FUNCTION, ENDFUNCTION)) indent = Indent.getNoneIndent()

        return JassBlock(childNode, null, indent, myCodeStyleSettings)
    }

    override fun getChildAttributes(i: Int): ChildAttributes = ChildAttributes(Indent.getNormalIndent(), null)

    override fun isIncomplete(): Boolean = !isOneOf(myNode.lastChildNode, ENDFUNCTION)
}
