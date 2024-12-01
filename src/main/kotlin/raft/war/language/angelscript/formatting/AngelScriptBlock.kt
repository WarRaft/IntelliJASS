package raft.war.language.angelscript.formatting

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import raft.war.ide.formatting.IdeBlock
import raft.war.language.angelscript.AngelScriptLanguage
import raft.war.language.angelscript.psi.AngelScriptTypes.*
import raft.war.language.angelscript.psi.file.AngelScriptFile

class AngelScriptBlock(
    node: ASTNode,
    indent: Indent? = null,
    alignment: Alignment? = null,
    code: CodeStyleSettings,
    common: CommonCodeStyleSettings,
    val ass: AngelScriptCodeStyleSettings,
) : IdeBlock(
    node = node,
    indent = indent,
    alignment = alignment,
    code = code,
    common = common,
) {

    override fun makeSubBlock(childNode: ASTNode): Block {
        var newNode = childNode
        val nodeType = newNode.elementType
        var newIndent: Indent? = null
        //val parent = childNode.psi.parent

        when (nodeType) {
            VAR, CLAZZ, FUN, LBRACE, RBRACE, CONSTRUCTOR, VAR, IF_STMT, FOR_STMT, EXPR_STAT, LINE_COMMENT -> {
                newIndent = Indent.getNoneIndent()
            }
        }

        return AngelScriptBlock(
            node = newNode,
            indent = newIndent,
            alignment = null,
            code = code,
            common = common,
            ass = ass,
        )
    }

    override fun getSpacing(child1: Block?, child2: Block): Spacing? {
        return SpacingBuilder(code, AngelScriptLanguage.Companion.instance)
            .between(PARAM_LIST, STAT_BLOCK).spacing(1, 1, 0, false, 0)
            .between(RPAREN, STAT_BLOCK).spacing(1, 1, 0, false, 0)
            .between(ID, CLAZZ_STAT_BLOCK).spacing(1, 1, 0, false, 0)

            // return
            .getSpacing(this, child1, child2)
    }

    override fun getChildAttributes(newChildIndex: Int): ChildAttributes {
        if (node.psi is AngelScriptFile) {
            return ChildAttributes(Indent.getNoneIndent(), null)
        }

        when (node.elementType) {
            STAT_BLOCK_BODY -> return ChildAttributes(Indent.getNoneIndent(), null)
        }

        return super.getChildAttributes(newChildIndex)
    }

    override fun isIncomplete(): Boolean {
        if (node.psi is AngelScriptFile) return true

        //val type = node.elementType
        //val typeLast = node.lastChildNode?.elementType
        return false
    }

    override fun isLeaf(): Boolean = false
}
