package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.ChildAttributes
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.psi.JassTypes.*

class JassStmtBlock(
    myNode: ASTNode?,
    myAlignment: Alignment?,
    myIndent: Indent?,
    codeStyleSettings: CodeStyleSettings?
) : JassBlock(
    myNode!!, myAlignment, myIndent, codeStyleSettings!!
) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var child = childNode
        var indent: Indent? = null

        if (FormatterUtil.isOneOf(child, STMT)) child = child.firstChildNode
        if (FormatterUtil.isOneOf(child, ELSE_IF_STMT, ELSE_STMT)) indent =
            Indent.getNoneIndent()

        if (FormatterUtil.isOneOf(
                child,
                STMT,
                IF_STMT,
                ELSE_IF_STMT,
                ELSE_STMT,
                LOOP_STMT
            )
        ) return JassStmtBlock(child, null, indent, myCodeStyleSettings)

        if (FormatterUtil.isOneOf(child, ENDIF, ENDLOOP)) indent = Indent.getNoneIndent()

        return JassBlock(child, null, indent, myCodeStyleSettings)
    }

    override fun getChildAttributes(i: Int): ChildAttributes {
        return ChildAttributes(Indent.getNormalIndent(), null)
    }

    override fun isIncomplete(): Boolean {
        if (FormatterUtil.isOneOf(myNode, IF_STMT)) return !FormatterUtil.isOneOf(
            myNode.lastChildNode,
            ENDIF
        )
        if (FormatterUtil.isOneOf(myNode, LOOP_STMT)) return !FormatterUtil.isOneOf(
            myNode.lastChildNode,
            ENDLOOP
        )
        return false
    }
}
