package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.ChildAttributes
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.formatting.JassCodeStyleSettings
import raft.war.language.jass.formatting.block.JassGlobalVarBlock.Companion.getAlignments
import raft.war.language.jass.psi.JassTypes

class JassGlobalsBlock(myNode: ASTNode?, code: CodeStyleSettings) :
    JassBlock(myNode!!, null, Indent.getNoneIndent(), code) {
    private val gvarAlignments: HashMap<String, Alignment>

    init {
        val jass = code.getCustomSettings(JassCodeStyleSettings::class.java)
        gvarAlignments = getAlignments(jass)
    }

    override fun makeSubBlock(childNode: ASTNode): Block {
        var indent = Indent.getNormalIndent()

        if (FormatterUtil.isOneOf(childNode, raft.war.language.jass.psi.JassTypes.GVAR)) return JassGlobalVarBlock(
            childNode,
            null,
            Indent.getNormalIndent(),
            myCodeStyleSettings,
            gvarAlignments
        )
        if (FormatterUtil.isOneOf(childNode, raft.war.language.jass.psi.JassTypes.GLOBALS, raft.war.language.jass.psi.JassTypes.ENDGLOBALS)) indent = Indent.getNoneIndent()

        return JassBlock(childNode, null, indent, myCodeStyleSettings)
    }

    override fun getChildAttributes(i: Int): ChildAttributes {
        return ChildAttributes(Indent.getNormalIndent(), null)
    }

    override fun isIncomplete(): Boolean {
        return !FormatterUtil.isOneOf(myNode.lastChildNode, raft.war.language.jass.psi.JassTypes.ENDGLOBALS)
    }
}
