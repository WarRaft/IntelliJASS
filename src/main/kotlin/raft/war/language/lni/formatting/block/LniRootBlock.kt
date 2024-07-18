package raft.war.language.lni.formatting.block

import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import raft.war.language.lni.psi.LniTypes.ITEM

class LniRootBlock(myNode: ASTNode, code: CodeStyleSettings) :
    LniBlock(myNode, null, Indent.getNoneIndent(), code) {

    override fun makeSubBlock(childNode: ASTNode): Block {
        if (isOneOf(childNode, ITEM)) return LniItemBlock(
            childNode,
            null,
            Indent.getNoneIndent(),
            myCodeStyleSettings
        )
        return LniBlock(childNode, myAlignment, myIndent, myCodeStyleSettings)
    }
}
