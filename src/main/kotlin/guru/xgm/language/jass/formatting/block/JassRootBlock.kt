package guru.xgm.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.jass.formatting.JassCodeStyleSettings
import guru.xgm.language.jass.lang.JassLanguage.Companion.instance
import guru.xgm.language.jass.psi.JassTypes

class JassRootBlock(myNode: ASTNode, code: CodeStyleSettings, jass: JassCodeStyleSettings) : JassBlock(
    myNode, null, Indent.getNoneIndent(), code
) {
    private val typeAlignments: HashMap<String, Alignment> = JassTypeBlock.getAlignments(jass)
    private val nativeAligner = JassNativeBlockAligner(jass)

    override fun makeSubBlock(childNode: ASTNode): Block {
        if (FormatterUtil.isOneOf(childNode, JassTypes.TYPE_DEF)) return JassTypeBlock(
            childNode,
            myCodeStyleSettings,
            typeAlignments
        )
        if (FormatterUtil.isOneOf(childNode, JassTypes.NATIV)) return JassNativeBlock(
            childNode,
            Indent.getNoneIndent(),
            myCodeStyleSettings,
            nativeAligner
        )
        if (FormatterUtil.isOneOf(childNode, JassTypes.GLOB)) return JassGlobalsBlock(childNode, myCodeStyleSettings)
        if (FormatterUtil.isOneOf(childNode, JassTypes.FUN)) return JassFunctionBlock(
            childNode,
            null,
            Indent.getNoneIndent(),
            myCodeStyleSettings
        )

        return JassBlock(childNode, myAlignment, myIndent, myCodeStyleSettings)
    }

    override val spacingBuilder: SpacingBuilder
        get() = SpacingBuilder(myCodeStyleSettings, instance)
            .between(JassTypes.TYPE_DEF, JassTypes.TYPE_DEF).spacing(0, 0, 1, true, 2)
            .between(JassTypes.TYPE_DEF, JassTypes.LINE_COMMENT).spacing(1, 1, 0, true, 100)
            .between(JassTypes.NATIV, JassTypes.NATIV).spacing(0, 0, 1, true, 2)
            .between(JassTypes.NATIV, JassTypes.LINE_COMMENT).spacing(1, 1, 0, true, 100)
}
