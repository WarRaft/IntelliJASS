package raft.war.language.jass.formatting

import com.intellij.formatting.Alignment
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import raft.war.ide.formatting.IdeBlockData
import raft.war.language.jass.formatting.aligner.JassTypeAligner

data class JassBlockData(
    override val node: ASTNode,
    override val code: CodeStyleSettings,
    val jass: JassCodeStyleSettings,
    override val indent: Indent?,
    override val alignment: Alignment?,
    var typeAligner: JassTypeAligner?,
) :
    IdeBlockData(
        node = node,
        code = code,
        indent = indent,
        alignment = alignment,
    ) {
    init {
        typeAligner ?: JassTypeAligner(jass)
    }
}
