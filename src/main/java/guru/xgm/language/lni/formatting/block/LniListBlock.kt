package guru.xgm.language.lni.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings

class LniListBlock(
    myNode: ASTNode,
    myAlignment: Alignment?,
    myIndent: Indent?,
    codeStyleSettings: CodeStyleSettings
) : LniBlock(
    myNode, myAlignment, myIndent, codeStyleSettings
) {
    override fun makeSubBlock(childNode: ASTNode): Block =
        LniBlock(childNode, myAlignment, Indent.getNormalIndent(), myCodeStyleSettings)
}
