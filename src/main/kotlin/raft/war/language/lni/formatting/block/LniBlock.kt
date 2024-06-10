package raft.war.language.lni.formatting.block

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import raft.war.language.lni.lang.LniLanguage
import raft.war.language.lni.psi.LniTypes

open class LniBlock(
    protected val myNode: ASTNode,
    protected val myAlignment: Alignment? = null,
    protected val myIndent: Indent? = null,
    protected val myCodeStyleSettings: CodeStyleSettings
) : ASTBlock {
    private val myWrap: Wrap? = null
    private var mySubBlocks: MutableList<Block>? = null
    private var mySpacingBuilder: SpacingBuilder? = null

    open fun makeSubBlock(childNode: ASTNode): Block {
        val indent = Indent.getNoneIndent()
        //if (isOneOf(childNode, STMT)) indent = Indent.getNormalIndent();
        return LniBlock(childNode, null, indent, myCodeStyleSettings)
    }

    override fun getSubBlocks(): List<Block> {
        if (mySubBlocks != null) return mySubBlocks!!
        val children = myNode.getChildren(null)
        mySubBlocks = mutableListOf()
        for (child in children) {
            if (FormatterUtil.isWhitespaceOrEmpty(child)) continue
            mySubBlocks!!.add(makeSubBlock(child))
        }
        return mySubBlocks!!
    }

    override fun getNode(): ASTNode = myNode

    override fun getTextRange(): TextRange = myNode.textRange

    override fun getWrap(): Wrap? = myWrap

    override fun getIndent(): Indent? = myIndent

    override fun getAlignment(): Alignment? = myAlignment

    private val spacingBuilder: SpacingBuilder
        //final CommonCodeStyleSettings code = myCodeStyleSettings.getCommonSettings(AngelScriptLanguage.INSTANCE.getID());
        get() = SpacingBuilder(myCodeStyleSettings, LniLanguage.instance)
            .around(raft.war.language.lni.psi.LniTypes.EQ).spacing(1, 1, 0, false, 0)

    override fun getSpacing(block1: Block?, block2: Block): Spacing? {
        if (mySpacingBuilder == null) mySpacingBuilder = spacingBuilder
        return mySpacingBuilder!!.getSpacing(this, block1, block2)
    }

    override fun getChildAttributes(i: Int): ChildAttributes = ChildAttributes(Indent.getNoneIndent(), null)

    override fun isIncomplete(): Boolean = false

    override fun isLeaf(): Boolean = myNode.firstChildNode == null
}
