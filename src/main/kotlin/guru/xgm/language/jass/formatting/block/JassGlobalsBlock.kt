package guru.xgm.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.ChildAttributes
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.jass.formatting.JassCodeStyleSettings
import guru.xgm.language.jass.formatting.block.JassGlobalVarBlock.Companion.getAlignments
import guru.xgm.language.jass.psi.JassTypes

class JassGlobalsBlock(myNode: ASTNode?, code: CodeStyleSettings) :
    JassBlock(myNode!!, null, Indent.getNoneIndent(), code) {
    private val gvarAlignments: HashMap<String, Alignment>

    init {
        val jass = code.getCustomSettings(JassCodeStyleSettings::class.java)
        gvarAlignments = getAlignments(jass)
    }

    override fun makeSubBlock(childNode: ASTNode): Block {
        var indent = Indent.getNormalIndent()

        if (FormatterUtil.isOneOf(childNode, JassTypes.GVAR)) return JassGlobalVarBlock(
            childNode,
            null,
            Indent.getNormalIndent(),
            myCodeStyleSettings,
            gvarAlignments
        )
        if (FormatterUtil.isOneOf(childNode, JassTypes.GLOBALS, JassTypes.ENDGLOBALS)) indent = Indent.getNoneIndent()

        return JassBlock(childNode, null, indent, myCodeStyleSettings)
    }

    override fun getChildAttributes(i: Int): ChildAttributes {
        return ChildAttributes(Indent.getNormalIndent(), null)
    }

    override fun isIncomplete(): Boolean {
        return !FormatterUtil.isOneOf(myNode.lastChildNode, JassTypes.ENDGLOBALS)
    }
}
