package raft.war.language.jass.formatting.block

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.lang.JassLanguage.Companion.instance
import raft.war.language.jass.psi.JassTypes

open class JassBlock(
    @JvmField protected val myNode: ASTNode,
    @JvmField protected val myAlignment: Alignment?,
    @JvmField protected val myIndent: Indent?,
    @JvmField protected val myCodeStyleSettings: CodeStyleSettings
) : ASTBlock {
    private val myWrap: Wrap? = null
    private var mySubBlocks: MutableList<Block>? = null
    private var mySpacingBuilder: SpacingBuilder? = null

    open fun makeSubBlock(childNode: ASTNode): Block {
        //final IElementType type = childNode.getElementType();
        return JassBlock(childNode, null, null, myCodeStyleSettings)
    }

    override fun getSubBlocks(): List<Block> {
        if (mySubBlocks == null) {
            val children = myNode.getChildren(null)
            mySubBlocks = ArrayList(children.size)
            for (child in children) {
                if (FormatterUtil.isWhitespaceOrEmpty(child)) continue
                mySubBlocks!!.add(makeSubBlock(child))
            }
        }
        return mySubBlocks!!
    }

    override fun getNode(): ASTNode? {
        return myNode
    }

    override fun getTextRange(): TextRange {
        return myNode.textRange
    }

    override fun getWrap(): Wrap? {
        return myWrap
    }

    override fun getIndent(): Indent? {
        return myIndent
    }

    override fun getAlignment(): Alignment? {
        return myAlignment
    }

    protected open val spacingBuilder: SpacingBuilder?
        get() {
            val code = myCodeStyleSettings.getCommonSettings(instance.id)

            val sac = if (code.SPACE_AFTER_COMMA) 1 else 0
            val sbc = if (code.SPACE_BEFORE_COMMA) 1 else 0
            val saao = if (code.SPACE_AROUND_ASSIGNMENT_OPERATORS) 1 else 0

            return SpacingBuilder(myCodeStyleSettings, instance)
                .after(raft.war.language.jass.psi.JassTypes.COMMA).spacing(sac, sac, 0, false, 0)
                .before(raft.war.language.jass.psi.JassTypes.COMMA).spacing(sbc, sbc, 0, false, 0)
                .around(raft.war.language.jass.psi.JassTypes.EQ).spacing(saao, saao, 0, false, 0)
                .between(raft.war.language.jass.psi.JassTypes.TYPE_NAME, raft.war.language.jass.psi.JassTypes.ID).spacing(1, 1, 0, false, 0)
                .around(raft.war.language.jass.psi.JassTypes.NATIVE).spacing(1, 1, 0, false, 0)
                .around(raft.war.language.jass.psi.JassTypes.FUN_TAKE).spacing(1, 1, 0, false, 0)
                .around(raft.war.language.jass.psi.JassTypes.TAKES).spacing(1, 1, 0, false, 0)
                .after(raft.war.language.jass.psi.JassTypes.RETURNS).spacing(1, 1, 0, false, 0)
        }

    override fun getSpacing(block1: Block?, block2: Block): Spacing? {
        if (mySpacingBuilder == null) mySpacingBuilder = spacingBuilder
        return mySpacingBuilder!!.getSpacing(this, block1, block2)
    }

    override fun getChildAttributes(i: Int): ChildAttributes {
        return ChildAttributes(Indent.getNoneIndent(), null)
    }

    override fun isIncomplete(): Boolean {
        return false
    }

    override fun isLeaf(): Boolean {
        return myNode.firstChildNode == null
    }
}
