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

    // dfdf

    override fun makeSubBlock(childNode: ASTNode): Block {
        var newNode = childNode
        val nodeType = newNode.elementType
        var newIndent: Indent? = null
        //val parent = childNode.psi.parent

        when (nodeType) {
            VAR,
            CLAZZ,
            FUN,
            LBRACE,
            RBRACE,
            CONSTRUCTOR,
            VAR,
            IF_STMT,
            FOR_STMT,
            EXPR_STAT,
            BLOCK_COMMENT,
            LINE_COMMENT,
            INCLUDE_STMT -> {
                newIndent = Indent.getNoneIndent()
            }
        }

        when (node.elementType) {
            STMT_BRACER,
            ENUM_BRACER,
            NSPACE_BRACER -> {
                when (nodeType) {
                    BLOCK_COMMENT,
                    LINE_COMMENT -> {
                        newIndent = Indent.getNormalIndent()
                    }
                }
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
        var sp = SpacingBuilder(code, AngelScriptLanguage.Companion.instance)
            .between(PARAM_LIST, STMT_BRACER).spacing(1, 1, 0, false, 0)
            .between(RPAREN, STMT_BRACER).spacing(1, 1, 0, false, 0)
            .between(ID, CLAZZ_BRACER).spacing(1, 1, 0, false, 0)
            .after(COMMA).spacing(1, 10, 0, true, 10)

        when (node.elementType) {
            MINUS_UN_EXPR -> {
                sp = sp.after(MINUS).spacing(0, 0, 0, false, 0)
            }
        }

        return sp.getSpacing(this, child1, child2)
    }

    override fun getChildAttributes(newChildIndex: Int): ChildAttributes {
        if (node.psi is AngelScriptFile) {
            return ChildAttributes(Indent.getNoneIndent(), null)
        }

        when (node.elementType) {
            STMT_BRACER_BODY -> return ChildAttributes(Indent.getNoneIndent(), null)
        }

        return super.getChildAttributes(newChildIndex)
    }

    override fun isIncomplete(): Boolean {
        if (node.psi is AngelScriptFile) return true

        val type = node.elementType
        val typeLast = node.lastChildNode?.elementType

        return when (type) {
            STMT_BRACER_BODY -> typeLast != SEMI
            else -> false
        }
    }

    override fun isLeaf(): Boolean = false
}
