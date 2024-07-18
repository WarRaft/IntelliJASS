package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.psi.AngelScriptTypes.EQ

class AngelScriptBlockEnumItem(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings,
    private val parent: AngelScriptBlockEnumStat
) : AngelScriptBlock(myNode, myAlignment, myIndent, settings) {
    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(childNode, EQ)) return AngelScriptBlock(
            childNode,
            parent.eqAlignment,
            null,
            settings
        )

        return super.makeSubBlock(childNode, indent)
    }
}
