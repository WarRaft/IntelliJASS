package guru.xgm.language.lni.formatting.block

import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.lni.psi.LniTypes

class LniRootBlock(myNode: ASTNode, code: CodeStyleSettings) :
    LniBlock(myNode, null, Indent.getNoneIndent(), code) {

    override fun makeSubBlock(childNode: ASTNode): Block {
        if (FormatterUtil.isOneOf(childNode, LniTypes.ITEM)) return LniItemBlock(
            childNode,
            null,
            Indent.getNoneIndent(),
            myCodeStyleSettings
        )
        return LniBlock(childNode, myAlignment, myIndent, myCodeStyleSettings)
    }
}
