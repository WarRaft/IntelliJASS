package guru.xgm.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings

class AngelScriptBlockFun(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlockBraceParent(myNode, myAlignment, myIndent, settings) {
    init {
        braceStyle = settings.common.METHOD_BRACE_STYLE
    }
}
