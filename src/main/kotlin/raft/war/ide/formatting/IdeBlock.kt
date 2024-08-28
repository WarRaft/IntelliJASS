package raft.war.ide.formatting

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.formatter.FormatterUtil

// https://plugins.jetbrains.com/docs/intellij/code-formatting.html

abstract class IdeBlock(open val data: IdeBlockData) : ASTBlock {
    private var mySubBlocks: MutableList<Block>? = null

    override fun getTextRange(): TextRange = node.textRange

    override fun getNode(): ASTNode = data.node

    abstract fun makeSubBlock(childNode: ASTNode): Block

    override fun getSubBlocks(): MutableList<Block> {
        if (mySubBlocks != null) return mySubBlocks!!
        val children = node.getChildren(null)
        mySubBlocks = ArrayList(children.size)
        for (child in children) {
            if (FormatterUtil.isWhitespaceOrEmpty(child)) continue
            mySubBlocks!!.add(makeSubBlock(child))
        }
        return mySubBlocks!!
    }

    override fun getWrap(): Wrap? = null

    override fun getIndent(): Indent? = data.indent

    override fun getAlignment(): Alignment? = data.alignment

    override fun getSpacing(child1: Block?, child2: Block): Spacing? = null

    override fun getChildAttributes(newChildIndex: Int): ChildAttributes = ChildAttributes(null, null)

    override fun isIncomplete(): Boolean = true

    override fun isLeaf(): Boolean = node.firstChildNode == null
}
