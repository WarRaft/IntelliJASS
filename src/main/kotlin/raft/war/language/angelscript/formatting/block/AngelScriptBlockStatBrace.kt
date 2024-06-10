package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings

class AngelScriptBlockStatBrace(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings,
    private val braceStyle: Int
) : AngelScriptBlock(myNode, myAlignment, myIndent, settings) {
    override fun getIndent(): Indent? {
        return when (braceStyle) {
            CommonCodeStyleSettings.NEXT_LINE_SHIFTED -> Indent.getNormalIndent()
            CommonCodeStyleSettings.END_OF_LINE, CommonCodeStyleSettings.NEXT_LINE, CommonCodeStyleSettings.NEXT_LINE_IF_WRAPPED, CommonCodeStyleSettings.NEXT_LINE_SHIFTED2 -> Indent.getNoneIndent()
            else -> super.getIndent()
        }
    }
}
