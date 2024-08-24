package raft.war.language.jass.formatting

import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import raft.war.ide.formatting.IdeBlockData

data class JassBlockData(
    override val node: ASTNode,
    override val code: CodeStyleSettings,
    val jass: JassCodeStyleSettings,
    override val indent: Indent?
) :
    IdeBlockData(node, code, indent)
