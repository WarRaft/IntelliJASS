package guru.xgm.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.ChildAttributes
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.jass.psi.JassTypes

class JassStatementBlock(
    myNode: ASTNode?,
    myAlignment: Alignment?,
    myIndent: Indent?,
    codeStyleSettings: CodeStyleSettings?
) : JassBlock(
    myNode!!, myAlignment, myIndent, codeStyleSettings!!
) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var childNode = childNode
        var indent: Indent? = null

        if (FormatterUtil.isOneOf(childNode, JassTypes.STMT)) childNode = childNode.firstChildNode
        if (FormatterUtil.isOneOf(childNode, JassTypes.ELSE_IF_STMT, JassTypes.ELSE_STMT)) indent =
            Indent.getNoneIndent()

        if (FormatterUtil.isOneOf(
                childNode,
                JassTypes.STMT,
                JassTypes.IF_STMT,
                JassTypes.ELSE_IF_STMT,
                JassTypes.ELSE_STMT,
                JassTypes.LOOP_STMT
            )
        ) return JassStatementBlock(childNode, null, indent, myCodeStyleSettings)

        if (FormatterUtil.isOneOf(childNode, JassTypes.ENDIF, JassTypes.ENDLOOP)) indent = Indent.getNoneIndent()

        return JassBlock(childNode, null, indent, myCodeStyleSettings)
    }

    override fun getChildAttributes(i: Int): ChildAttributes {
        return ChildAttributes(Indent.getNormalIndent(), null)
    }

    override fun isIncomplete(): Boolean {
        if (FormatterUtil.isOneOf(myNode, JassTypes.IF_STMT)) return !FormatterUtil.isOneOf(
            myNode.lastChildNode,
            JassTypes.ENDIF
        )
        if (FormatterUtil.isOneOf(myNode, JassTypes.LOOP_STMT)) return !FormatterUtil.isOneOf(
            myNode.lastChildNode,
            JassTypes.ENDLOOP
        )
        return false
    }
}
