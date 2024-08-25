package raft.war.language.jass.formatting

import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.Spacing
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import raft.war.ide.formatting.IdeBlock
import raft.war.language.jass.JassLanguage.Companion.instance
import raft.war.language.jass.psi.JassTypes.*
import raft.war.language.jass.psi.file.JassFile

class JassBlock(override val data: JassBlockData) : IdeBlock(data) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var node = childNode
        val nodeType = node.elementType
        var indent = data.indent
        var alignment = data.alignment
        val typeAligner = if (nodeType == TYPE_DEF) data.typeAligner else null

        val parent = childNode.psi.parent

        if (parent is JassFile && isOneOf(childNode, TYPE_DEF, NATIV, GLOB, FUN, LINE_COMMENT)) {
            indent = Indent.getNoneIndent()
        }

        // -- typedef
        if (data.typeAligner != null) {
            when (nodeType) {
                TYPE_NAME -> {
                    alignment = data.typeAligner?.alignment(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_RIGHT.name)
                    node = node.firstChildNode
                }

                EXTENDS -> {
                    alignment = data.typeAligner?.alignment(JassCodeStyleSettings::AT_TYPE_DECL_EXTENDS.name)
                }

                TYPE_NAME_BASE -> {
                    alignment = data.typeAligner?.alignment(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_BASE_RIGHT.name)
                    node = node.firstChildNode.firstChildNode
                }
            }
        }

        return JassBlock(
            JassBlockData(
                node = node,
                code = data.code,
                jass = data.jass,
                indent = indent,
                alignment = alignment,
                typeAligner = typeAligner,
            )
        )
    }

    override fun getSpacing(child1: Block?, child2: Block): Spacing? {

        return SpacingBuilder(data.code, instance)
            // type
            .after(TYPE).spacing(1, 1, 0, false, 0)
            .around(EXTENDS).spacing(1, 1, 0, false, 0)

            // return
            .getSpacing(this, child1, child2)
    }

    override fun isIncomplete(): Boolean {
        val type = node.elementType
        val typeLast = node.lastChildNode?.elementType
        when (type) {
            TYPE_DEF -> return typeLast == TYPE_NAME_BASE
        }
        return true
    }

    override fun isLeaf(): Boolean = isOneOf(node, TYPE_NAME, TYPE_NAME_BASE)
}
