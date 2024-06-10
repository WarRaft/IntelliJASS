package guru.xgm.language.zinc.formatting.block

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil
import guru.xgm.language.zinc.lang.ZincLanguage
import guru.xgm.language.zinc.psi.ZincTypes.*

open class ZincBlock(
    protected val myNode: ASTNode,
    protected val myAlignment: Alignment?,
    protected val myIndent: Indent,
    protected val myCodeStyleSettings: CodeStyleSettings
) : ASTBlock {
    private val myWrap: Wrap? = null
    private var mySubBlocks: MutableList<Block>? = null
    private var mySpacingBuilder: SpacingBuilder? = null

    open fun makeSubBlock(childNode: ASTNode): Block {
        var indent = Indent.getNoneIndent()

        if (FormatterUtil.isOneOf(
                childNode,
                EXPR_STMT,
                FOR_STMT,
                IF_STMT,
                RETURN_STMT,
                VAR_DEF,
                DO_STMT,
                WHILE_STMT,
                BREAK_STMT,  // def
                LIB_VIS_DEF,
                VAR_DEF,
                STRUCT_DEF,
                METHOD_DEF,
                FUNC_DEF
            )
        ) indent = Indent.getNormalIndent()

        return ZincBlock(childNode, null, indent, myCodeStyleSettings)
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

    //final CommonCodeStyleSettings code = myCodeStyleSettings.getCommonSettings(ZincLanguage.INSTANCE.getID());
    protected open val spacingBuilder: SpacingBuilder?
        get() = SpacingBuilder(myCodeStyleSettings, ZincLanguage.instance) // paren
            .after(LPAREN).spacing(0, 1, 0, true, 0)
            .before(RPAREN).spacing(0, 1, 0, true, 0)
            .before(ARGS).spacing(0, 1, 0, true, 0) // comma
            .after(COMMA).spacing(1, 1, 0, false, 0)
            .before(COMMA).spacing(0, 0, 0, false, 0)


            .around(DOT).spacing(0, 0, 0, false, 0)
            .around(EQ).spacing(1, 1, 0, false, 0)
            .around(MINUS_GT).spacing(1, 1, 0, false, 0)
            .around(FUNC_RETURNS).spacing(1, 1, 0, false, 0)
            .between(TYPE_NAME, ID).spacing(1, 1, 0, false, 0)

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
