package raft.war.ide.formatting

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil

// https://plugins.jetbrains.com/docs/intellij/code-formatting.html

abstract class IdeBlock(
    @get:JvmName("getNodeJava") open val node: ASTNode,
    @get:JvmName("getIndentJava") open val indent: Indent? = null,
    @get:JvmName("getAlignmentJava") open val alignment: Alignment? = null,
    open val code: CodeStyleSettings,
    open val common: CommonCodeStyleSettings,
) : ASTBlock {
    private var getSubBlocksList: MutableList<Block>? = null

    override fun getTextRange(): TextRange = node.textRange

    override fun getNode(): ASTNode = node

    abstract fun makeSubBlock(childNode: ASTNode): Block

    override fun getSubBlocks(): MutableList<Block> {
        if (getSubBlocksList != null) return getSubBlocksList!!
        val children = node.getChildren(null)
        getSubBlocksList = ArrayList(children.size)
        for (child in children) {
            if (FormatterUtil.isWhitespaceOrEmpty(child)) continue
            getSubBlocksList!!.add(makeSubBlock(child))
        }
        return getSubBlocksList!!
    }

    override fun getWrap(): Wrap? = null

    override fun getIndent(): Indent? = indent

    override fun getAlignment(): Alignment? = alignment

    override fun getSpacing(child1: Block?, child2: Block): Spacing? = null

    override fun getChildAttributes(newChildIndex: Int): ChildAttributes = ChildAttributes(null, null)

    override fun isIncomplete(): Boolean = true

    override fun isLeaf(): Boolean = node.firstChildNode == null
}
