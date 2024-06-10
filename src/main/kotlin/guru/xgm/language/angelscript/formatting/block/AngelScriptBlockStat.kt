package guru.xgm.language.angelscript.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import guru.xgm.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import guru.xgm.language.angelscript.psi.AngelScriptTypes

open class AngelScriptBlockStat(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    settings: AngelScriptBlockSettings,
    private val braceStyle: Int
) : AngelScriptBlock(myNode, myAlignment, myIndent, settings) {
    override fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (isOneOf(childNode, AngelScriptTypes.LBRACE, AngelScriptTypes.RBRACE)) {
            return AngelScriptBlockStatBrace(childNode, null, null, settings, braceStyle)
        }
        return super.makeSubBlock(childNode, Indent.getNormalIndent())
    }

    override fun getIndent(): Indent? {
        return when (braceStyle) {
            CommonCodeStyleSettings.END_OF_LINE, CommonCodeStyleSettings.NEXT_LINE_SHIFTED2 -> Indent.getNormalIndent()
            CommonCodeStyleSettings.NEXT_LINE, CommonCodeStyleSettings.NEXT_LINE_IF_WRAPPED, CommonCodeStyleSettings.NEXT_LINE_SHIFTED -> Indent.getNoneIndent()
            else -> super.getIndent()
        }
    }

    override val spacingBuilder: SpacingBuilder
        get() = super.spacingBuilder
            .after(AngelScriptTypes.LBRACE).spacing(1, 1, 1, false, 1)
            .before(AngelScriptTypes.RBRACE).spacing(1, 1, 1, false, 1)
}
