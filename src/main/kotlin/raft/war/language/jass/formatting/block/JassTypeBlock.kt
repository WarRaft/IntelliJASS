package raft.war.language.jass.formatting.block

import com.intellij.formatting.Alignment
import com.intellij.formatting.Block
import com.intellij.formatting.Indent
import com.intellij.formatting.SpacingBuilder
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.formatting.JassCodeStyleSettings
import raft.war.language.jass.lang.JassLanguage
import raft.war.language.jass.psi.JassTypes.*

/**
 * https://plugins.jetbrains.com/docs/intellij/code-formatting.html
 */
class JassTypeBlock(
    myNode: ASTNode?,
    myCodeStyleSettings: CodeStyleSettings,
    private val aligments: HashMap<String, Alignment>
) : JassBlock(myNode!!, null, Indent.getNoneIndent(), myCodeStyleSettings) {
    override fun makeSubBlock(childNode: ASTNode): Block {
        var node = childNode
        var alignment: Alignment? = null

        if (FormatterUtil.isOneOf(node, TYPE_NAME)) {
            alignment = aligments[JassCodeStyleSettings::AT_TYPE_DECL_TYPE_RIGHT.name]
            node = node.firstChildNode
        }

        if (FormatterUtil.isOneOf(node, EXTENDS)) {
            alignment = aligments[JassCodeStyleSettings::AT_TYPE_DECL_EXTENDS.name]
        }

        if (FormatterUtil.isOneOf(node, TYPE_NAME_BASE)) {
            alignment = aligments[JassCodeStyleSettings::AT_TYPE_DECL_TYPE_BASE_RIGHT.name]
            node = node.firstChildNode.firstChildNode
        }

        return JassBlock(node, alignment, null, myCodeStyleSettings)
    }

    override val spacingBuilder: SpacingBuilder
        get() = SpacingBuilder(myCodeStyleSettings, JassLanguage.instance)
            .after(TYPE).spacing(1, 1, 0, false, 0)
            .around(EXTENDS).spacing(1, 1, 0, false, 0)

    override fun isIncomplete(): Boolean {
        return !FormatterUtil.isOneOf(myNode.lastChildNode, TYPE_NAME_BASE)
    }

    companion object {
        fun getAlignments(jass: JassCodeStyleSettings): HashMap<String, Alignment> {
            val map = HashMap<String, Alignment>()

            if (jass.AT_TYPE_DECL_TYPE_RIGHT) map[JassCodeStyleSettings::AT_TYPE_DECL_TYPE_RIGHT.name] =
                Alignment.createAlignment(true, Alignment.Anchor.RIGHT)
            if (jass.AT_TYPE_DECL_EXTENDS) map[JassCodeStyleSettings::AT_TYPE_DECL_EXTENDS.name] =
                Alignment.createAlignment(true)
            if (jass.AT_TYPE_DECL_TYPE_BASE_RIGHT) map[JassCodeStyleSettings::AT_TYPE_DECL_TYPE_BASE_RIGHT.name] =
                Alignment.createAlignment(true, Alignment.Anchor.RIGHT)

            return map
        }
    }
}
