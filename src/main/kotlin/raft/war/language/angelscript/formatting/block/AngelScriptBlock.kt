package raft.war.language.angelscript.formatting.block

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import com.intellij.psi.formatter.FormatterUtil.isWhitespaceOrEmpty
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings
import raft.war.language.angelscript.lang.AngelScriptLanguage
import raft.war.language.angelscript.psi.AngelScriptTypes

open class AngelScriptBlock(
    protected val myNode: ASTNode,
    protected val myAlignment: Alignment?,
    protected val myIndent: Indent?,
    protected val settings: AngelScriptBlockSettings
) : ASTBlock {
    private val myWrap: Wrap? = null

    private var mySubBlocks: MutableList<Block>? = null
    private var mySpacingBuilder: SpacingBuilder? = null

    open fun makeSubBlock(childNode: ASTNode, indent: Indent): Block {
        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.FUN)) return AngelScriptBlockFun(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.CLAZZ)) return AngelScriptBlockClazz(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.FOR_STMT)) return AngelScriptBlockFor(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.WHILE_STMT)) return AngelScriptBlockWhile(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.IF_STMT)) return AngelScriptBlockIf(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.ELSE_STMT)) return AngelScriptBlockElse(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.ENUMS)) return AngelScriptBlockEnum(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.SWITCH_STMT)) return AngelScriptBlockSwitch(
            childNode,
            null,
            indent,
            settings
        )

        if (isOneOf(childNode, raft.war.language.angelscript.psi.AngelScriptTypes.NSPACE)) return AngelScriptBlockNamespace(
            childNode,
            null,
            indent,
            settings
        )

        return AngelScriptBlock(childNode, null, indent, settings)
    }

    override fun getSubBlocks(): List<Block> {
        if (mySubBlocks == null) {
            val children = myNode.getChildren(null)
            mySubBlocks = ArrayList(children.size)
            for (child in children) {
                if (isWhitespaceOrEmpty(child)) continue
                mySubBlocks!!.add(makeSubBlock(child, Indent.getNoneIndent()))
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

    protected open val spacingBuilder: SpacingBuilder
        get() {
            var sb = SpacingBuilder(settings.code, AngelScriptLanguage.instance)

            val saao = if (settings.common.SPACE_AROUND_ASSIGNMENT_OPERATORS) 1 else 0
            sb = sb.around(raft.war.language.angelscript.psi.AngelScriptTypes.EQ).spacing(saao, saao, 0, false, 0)
                .around(raft.war.language.angelscript.psi.AngelScriptTypes.PLUS_EQ).spacing(saao, saao, 0, false, 0)
                .around(raft.war.language.angelscript.psi.AngelScriptTypes.MINUS_EQ).spacing(saao, saao, 0, false, 0)
                .around(raft.war.language.angelscript.psi.AngelScriptTypes.MUL_EQ).spacing(saao, saao, 0, false, 0)
                .around(raft.war.language.angelscript.psi.AngelScriptTypes.DIV_EQ).spacing(saao, saao, 0, false, 0)


            //final int sbc = settings.common.SPACE_BEFORE_COMMA ? 1 : 0;
            //sb = sb.before(COMMA).spacing(sbc, sbc, 0, false, 0);

            //final int sac = settings.common.SPACE_AFTER_COMMA ? 1 : 0;
            //sb = sb.after(COMMA).spacing(sac, sac, 0, false, 0);
            return sb // generic
                .between(raft.war.language.angelscript.psi.AngelScriptTypes.LT, raft.war.language.angelscript.psi.AngelScriptTypes.TYPE).spacing(0, 0, 0, false, 0)
                .between(raft.war.language.angelscript.psi.AngelScriptTypes.TYPE, raft.war.language.angelscript.psi.AngelScriptTypes.GT).spacing(0, 0, 0, false, 0) // paren

                .after(raft.war.language.angelscript.psi.AngelScriptTypes.LPAREN).spacing(0, 1, 0, true, 0)
                .before(raft.war.language.angelscript.psi.AngelScriptTypes.RPAREN).spacing(0, 1, 0, true, 0)
                .before(raft.war.language.angelscript.psi.AngelScriptTypes.ARG_LIST).spacing(0, 1, 0, true, 0)

                .around(raft.war.language.angelscript.psi.AngelScriptTypes.DOT).spacing(0, 0, 0, false, 0)
                .around(raft.war.language.angelscript.psi.AngelScriptTypes.MINUS_GT).spacing(1, 1, 0, false, 0)
        }

    override fun getSpacing(block1: Block?, block2: Block): Spacing? {
        if (mySpacingBuilder == null) mySpacingBuilder = spacingBuilder

        val c2 = ASTBlock.getNode(block2)
        if (isOneOf(c2, raft.war.language.angelscript.psi.AngelScriptTypes.IF_STMT) && block1 != null) {
            val c1 = ASTBlock.getNode(block1)
            return if (isOneOf(c1, raft.war.language.angelscript.psi.AngelScriptTypes.ELSE)
            ) Spacing.createSpacing(1, 1, 0, false, 0)
            else Spacing.createSpacing(0, 99, 1, true, 99)
        }

        return mySpacingBuilder!!.getSpacing(this, block1, block2)
    }

    override fun getChildAttributes(i: Int): ChildAttributes {
        var indent = Indent.getNoneIndent()
        if (isOneOf(
                myNode,
                raft.war.language.angelscript.psi.AngelScriptTypes.STAT_BLOCK,
                raft.war.language.angelscript.psi.AngelScriptTypes.CLAZZ_STAT_BLOCK,
                raft.war.language.angelscript.psi.AngelScriptTypes.ENUM_STAT_BLOCK,
                raft.war.language.angelscript.psi.AngelScriptTypes.NSPACE_STAT_BLOCK
            )
        ) indent = Indent.getNormalIndent()
        return ChildAttributes(indent, null)
    }

    override fun isIncomplete(): Boolean {
        return false
    }

    override fun isLeaf(): Boolean {
        return myNode.firstChildNode == null
    }
}
