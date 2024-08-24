package raft.war.language.jass.formatting

import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import raft.war.ide.formatting.IdeBlock
import raft.war.language.jass.psi.JassTypes.*

class JassBlock(override val data: JassBlockData) : IdeBlock(data) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var indent = data.indent

        if (isOneOf(childNode, TYPE_DEF, NATIV, GLOB, FUN)) {
            indent = Indent.getNoneIndent()
        }

        return JassBlock(
            JassBlockData(
                node = childNode,
                code = data.code,
                jass = data.jass,
                indent = indent,
            )
        )
    }
}
