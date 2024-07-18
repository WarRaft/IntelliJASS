package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockBraceParent
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.psi.AngelScriptTypes.ELSE_STMT
import raft.war.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK

class AngelScriptBlockIf(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings
) : AngelScriptBlockBraceParent(myNode, myAlignment, myIndent, settings) {
    init {
        braceStyle = settings.common.BRACE_STYLE
    }

    override val spacingBuilder: SpacingBuilder
        get() {
            return super.spacingBuilder
                .between(STAT_BLOCK, ELSE_STMT)
                .spacing(1, 1, if (braceStyle == CommonCodeStyleSettings.END_OF_LINE) 0 else 1, false, 0)
        }
}
