package guru.xgm.language.lni.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.lni.psi.LniTypes

class LniPropertyBlock(
    private var itemBlock: LniItemBlock,
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    codeStyleSettings: CodeStyleSettings
) : LniBlock(
    myNode, myAlignment, myIndent, codeStyleSettings
) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var alignment: Alignment? = null

        if (FormatterUtil.isOneOf(childNode, LniTypes.EQ)) alignment = itemBlock.propertyEqAlignment
        if (FormatterUtil.isOneOf(childNode, LniTypes.LIST)) return LniListBlock(
            childNode,
            null,
            null,
            myCodeStyleSettings
        )

        return LniBlock(childNode, alignment, null, myCodeStyleSettings)
    }
}
