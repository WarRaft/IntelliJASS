package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.formatting.JassCodeStyleSettings
import raft.war.language.jass.formatting.aligner.JassNativAligner
import raft.war.language.jass.psi.JassTypes.*

class JassNativeBlockOld(
    myNode: ASTNode,
    myIndent: Indent?,
    myCodeStyleSettings: CodeStyleSettings,
    private val aligner: JassNativAligner
) : JassBlockOld(myNode, null, myIndent, myCodeStyleSettings) {

    override fun makeSubBlock(childNode: ASTNode): Block {
        var alignment: Alignment? = null
        if (FormatterUtil.isOneOf(childNode, NATIVE)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NATIVE.name)
        if (FormatterUtil.isOneOf(childNode, ID)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NAME.name)
        if (FormatterUtil.isOneOf(childNode, TAKES)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_TAKES.name)
        if (FormatterUtil.isOneOf(childNode, RETURNS)) alignment =
            aligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_RETURNS.name)

        if (FormatterUtil.isOneOf(childNode, PARAM)) {
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
                FUN_NAME,
                FUN_TAKE,
                FUN_RET,
                PARAM_LIST
            )
        ) return JassNativeBlockOld(childNode, null, myCodeStyleSettings, aligner)

        return JassBlockOld(childNode, alignment, null, myCodeStyleSettings)
    }
}
