package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.psi.AngelScriptTypes

class AngelScriptBlockSwitch(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlockBraceParent(myNode, myAlignment, myIndent, settings) {
    init {
        braceStyle = settings.common.BRACE_STYLE
    }

    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (FormatterUtil.isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.SWITCH_STAT_BLOCK)) return AngelScriptBlockSwitchStat(
            childNode,
            null,
            null,
            settings,
            braceStyle
        )

        return super.makeSubBlock(childNode, indent)
    }
}
