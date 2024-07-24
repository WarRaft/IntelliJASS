package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.formatting.JassCodeStyleSettings
import raft.war.language.jass.JassLanguage.Companion.instance
import raft.war.language.jass.psi.JassTypes.*

class JassRootBlock(myNode: ASTNode, code: CodeStyleSettings, jass: JassCodeStyleSettings) : JassBlock(
    myNode, null, Indent.getNoneIndent(), code
) {
    private val typeAlignments: HashMap<String, Alignment> = JassTypeBlock.getAlignments(jass)
    private val nativeAligner = JassNativeBlockAligner(jass)

    override fun makeSubBlock(childNode: ASTNode): Block {
        if (FormatterUtil.isOneOf(childNode, TYPE_DEF)) return JassTypeBlock(
            childNode,
            myCodeStyleSettings,
            typeAlignments
        )
        if (FormatterUtil.isOneOf(childNode, NATIV)) return JassNativeBlock(
            childNode,
            Indent.getNoneIndent(),
            myCodeStyleSettings,
            nativeAligner
        )
        if (FormatterUtil.isOneOf(childNode, GLOB)) return JassGlobalsBlock(childNode, myCodeStyleSettings)

        return JassBlock(childNode, myAlignment, myIndent, myCodeStyleSettings)
    }

    override val spacingBuilder: SpacingBuilder
        get() = SpacingBuilder(myCodeStyleSettings, instance)
            .between(TYPE_DEF, TYPE_DEF).spacing(0, 0, 1, true, 2)
            .between(TYPE_DEF, LINE_COMMENT).spacing(1, 1, 0, true, 100)
            .between(NATIV, NATIV).spacing(0, 0, 1, true, 2)
            .between(NATIV, LINE_COMMENT).spacing(1, 1, 0, true, 100)
}
