package raft.war.language.jass.formatting.block

import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.formatting.JassCodeStyleSettings
import raft.war.language.jass.formatting.aligner.JassNativAligner
import raft.war.language.jass.psi.JassTypes.GLOB
import raft.war.language.jass.psi.JassTypes.NATIV

class JassRootBlockOld(myNode: ASTNode, code: CodeStyleSettings, jass: JassCodeStyleSettings) : JassBlockOld(
    myNode, null, Indent.getNoneIndent(), code
) {
    private val nativeAligner = JassNativAligner(jass)

    override fun makeSubBlock(childNode: ASTNode): Block {
        if (FormatterUtil.isOneOf(childNode, NATIV)) return JassNativeBlockOld(
            childNode,
            Indent.getNoneIndent(),
            myCodeStyleSettings,
            nativeAligner
        )
        if (FormatterUtil.isOneOf(childNode, GLOB)) return JassGlobalsBlockOld(childNode, myCodeStyleSettings)

        return JassBlockOld(childNode, myAlignment, myIndent, myCodeStyleSettings)
    }

}
