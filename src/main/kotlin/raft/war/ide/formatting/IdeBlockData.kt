package raft.war.ide.formatting

import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings

abstract class IdeBlockData(
    open val node: ASTNode,
    open val code: CodeStyleSettings,
    open val indent: Indent?,
)
