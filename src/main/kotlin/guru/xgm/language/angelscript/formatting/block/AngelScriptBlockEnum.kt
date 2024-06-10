package guru.xgm.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import guru.xgm.language.angelscript.psi.AngelScriptTypes

class AngelScriptBlockEnum(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlockBraceParent(myNode, myAlignment, myIndent, settings) {
    init {
        braceStyle = settings.common.BRACE_STYLE
    }

    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(childNode, AngelScriptTypes.ENUM_STAT_BLOCK)) {
            return AngelScriptBlockEnumStat(childNode, null, null, settings, braceStyle)
        }
        return super.makeSubBlock(childNode, indent)
    }
}
