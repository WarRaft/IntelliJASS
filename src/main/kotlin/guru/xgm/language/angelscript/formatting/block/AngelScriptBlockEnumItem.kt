package guru.xgm.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import guru.xgm.language.angelscript.psi.AngelScriptTypes

class AngelScriptBlockEnumItem(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings,
    private val parent: AngelScriptBlockEnumStat
) : AngelScriptBlock(myNode, myAlignment, myIndent, settings) {
    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(childNode, AngelScriptTypes.EQ)) return AngelScriptBlock(
            childNode,
            parent.eqAlignment,
            null,
            settings
        )

        return super.makeSubBlock(childNode, indent)
    }
}
