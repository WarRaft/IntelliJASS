package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.psi.AngelScriptTypes

class AngelScriptBlockSwitchStat(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings,
    braceStyle: Int
) : AngelScriptBlockStat(myNode, myAlignment, myIndent, settings, braceStyle) {
    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.CASE_STMT)) return AngelScriptBlockCase(
            childNode,
            null,
            null,
            settings
        )

        return super.makeSubBlock(childNode, indent)
    }
}
