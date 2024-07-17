package raft.war.language.jass.formatting.block

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.jass.JassLanguage.Companion.instance
import raft.war.language.jass.psi.JassTypes.*

open class JassBlock(
    val myNode: ASTNode,
    val myAlignment: Alignment?,
    val myIndent: Indent?,
    val myCodeStyleSettings: CodeStyleSettings
) : ASTBlock {
    private val myWrap: Wrap? = null
    private var mySubBlocks: MutableList<Block>? = null
    private var mySpacingBuilder: SpacingBuilder? = null

    open fun makeSubBlock(childNode: ASTNode): Block {
        if (FormatterUtil.isOneOf(childNode, STMT)) return JassStmtBlock(
            childNode.firstChildNode,
            null,
            Indent.getNormalIndent(),
            myCodeStyleSettings
        )
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

    override fun getNode(): ASTNode? = myNode

    override fun getTextRange(): TextRange = myNode.textRange

    override fun getWrap(): Wrap? = myWrap

    override fun getIndent(): Indent? = myIndent

    override fun getAlignment(): Alignment? = myAlignment

    protected open val spacingBuilder: SpacingBuilder
        get() {
            val code = myCodeStyleSettings.getCommonSettings(instance.id)

            val sac = if (code.SPACE_AFTER_COMMA) 1 else 0
            val sbc = if (code.SPACE_BEFORE_COMMA) 1 else 0
            val saao = if (code.SPACE_AROUND_ASSIGNMENT_OPERATORS) 1 else 0

            return SpacingBuilder(myCodeStyleSettings, instance)
                // CallStmt
                .between(CALL, FUN_CALL).spacing(1, 1, 0, false, 0)
                // FunCall
                .between(FUN_NAME, LPAREN).spacing(0, 0, 0, false, 0)

                // all
                .after(COMMA).spacing(sac, sac, 0, false, 0)
                .before(COMMA).spacing(sbc, sbc, 0, false, 0)
                .around(EQ).spacing(saao, saao, 0, false, 0)
                .between(TYPE_NAME, ID).spacing(1, 1, 0, false, 0)
                .around(NATIVE).spacing(1, 1, 0, false, 0)
                .around(FUN_TAKE).spacing(1, 1, 0, false, 0)
                .around(TAKES).spacing(1, 1, 0, false, 0)
                .after(RETURNS).spacing(1, 1, 0, false, 0)
        }

    override fun getSpacing(block1: Block?, block2: Block): Spacing? =
        (mySpacingBuilder ?: spacingBuilder).getSpacing(this, block1, block2)

    override fun getChildAttributes(i: Int): ChildAttributes = ChildAttributes(Indent.getNoneIndent(), null)

    override fun isIncomplete(): Boolean = false

    override fun isLeaf(): Boolean = myNode.firstChildNode == null
}
