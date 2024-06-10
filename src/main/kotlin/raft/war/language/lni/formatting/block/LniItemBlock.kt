package raft.war.language.lni.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.lni.formatting.LniCodeStyleSettings
import raft.war.language.lni.psi.LniTypes

class LniItemBlock(myNode: ASTNode, myAlignment: Alignment?, myIndent: Indent?, codeStyleSettings: CodeStyleSettings) :
    LniBlock(
        myNode, myAlignment, myIndent, codeStyleSettings
    ) {
    var propertyEqAlignment: Alignment?

    init {
        val lni = codeStyleSettings.getCustomSettings(LniCodeStyleSettings::class.java)
        propertyEqAlignment = if (lni.AT_PROPERTY_EQ) Alignment.createAlignment(true, Alignment.Anchor.LEFT) else null
    }

    override fun makeSubBlock(childNode: ASTNode): Block {
        if (FormatterUtil.isOneOf(childNode, raft.war.language.lni.psi.LniTypes.PROPERTY)) return LniPropertyBlock(
            this,
            childNode,
            myAlignment,
            myIndent,
            myCodeStyleSettings
        )

        return LniBlock(childNode, myAlignment, myIndent, myCodeStyleSettings)
    }
}
