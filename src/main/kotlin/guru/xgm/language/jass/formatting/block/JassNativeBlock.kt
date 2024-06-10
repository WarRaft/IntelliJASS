package guru.xgm.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.jass.formatting.JassCodeStyleSettings
import guru.xgm.language.jass.psi.JassTypes

class JassNativeBlock(
    myNode: ASTNode,
    myIndent: Indent?,
    myCodeStyleSettings: CodeStyleSettings,
    private val aligner: JassNativeBlockAligner
) : JassBlock(myNode, null, myIndent, myCodeStyleSettings) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var alignment: Alignment? = null
        if (FormatterUtil.isOneOf(childNode, JassTypes.NATIVE)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NATIVE.name)
        if (FormatterUtil.isOneOf(childNode, JassTypes.ID)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NAME.name)
        if (FormatterUtil.isOneOf(childNode, JassTypes.TAKES)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_TAKES.name)
        if (FormatterUtil.isOneOf(childNode, JassTypes.RETURNS)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_RETURNS.name)

        if (FormatterUtil.isOneOf(childNode, JassTypes.PARAM)) {
            val children = childNode.treeParent.getChildren(null)

            var index = -1
            for (child in children) {
                if (FormatterUtil.isWhitespaceOrEmpty(child)) continue
                if (childNode.elementType !== child.elementType) continue
                index++
                if (childNode !== child) continue
                alignment = aligner.argument(index)
                break
            }
        }

        if (FormatterUtil.isOneOf(
                childNode,
                JassTypes.FUN_TAKE,
                JassTypes.FUN_RET,
                JassTypes.PARAM_LIST
            )
        ) return JassNativeBlock(childNode, null, myCodeStyleSettings, aligner)

        return JassBlock(childNode, alignment, null, myCodeStyleSettings)
    }
}
