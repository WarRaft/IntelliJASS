package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings

class AngelScriptBlockNamespace(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlockBraceParent(myNode, myAlignment, myIndent, settings) {
    init {
        braceStyle = settings.common.CLASS_BRACE_STYLE
    }
}
