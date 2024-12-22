package raft.war.language.jass.formatting

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import com.intellij.psi.formatter.FormatterUtil.isWhitespaceOrEmpty
import raft.war.ide.formatting.IdeBlock
import raft.war.language.jass.JassLanguage.Companion.instance
import raft.war.language.jass.formatting.aligner.JassGlobAligner
import raft.war.language.jass.formatting.aligner.JassNativAligner
import raft.war.language.jass.formatting.aligner.JassTypeAligner
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassGlob
import raft.war.language.jass.psi.JassTypes.*
import raft.war.language.jass.psi.file.JassFile

class JassBlock(
    node: ASTNode,
    indent: Indent? = null,
    alignment: Alignment? = null,
    code: CodeStyleSettings,
    common: CommonCodeStyleSettings,
    val jass: JassCodeStyleSettings,
    private val typeAligner: JassTypeAligner? = null,
    private val globAligner: JassGlobAligner? = null,
    private val nativAligner: JassNativAligner? = null,
) : IdeBlock(
    node = node,
    indent = indent,
    alignment = alignment,
    code = code,
    common = common,
) {
    private val typeAlignerAll = JassTypeAligner(jass)
    private val nativAlignerAll = JassNativAligner(jass)

    override fun makeSubBlock(childNode: ASTNode): Block {
        var newNode = childNode
        val nodeType = newNode.elementType
        var newIndent: Indent? = null
        var newAlignment: Alignment? = null

        val parent = childNode.psi.parent

        if (parent is JassFile && isOneOf(childNode, TYPE_DEF, NATIV, GLOB, FUN, LINE_COMMENT)) {
            newIndent = Indent.getNoneIndent()
        }

        when (nodeType) {
            TYPE_NAME -> {
                newAlignment = when {
                    typeAligner != null -> typeAligner.alignment(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_RIGHT.name)
                    globAligner != null -> globAligner.alignment(JassCodeStyleSettings::AT_GVAR_TYPE.name)
                    else -> null
                }
                newNode = newNode.firstChildNode
            }

            STMT, FUNCTION, ENDFUNCTION, LOOP, ENDLOOP, ELSE_STMT, ELSE_IF_STMT, ENDIF, GLOBALS, ENDGLOBALS -> {
                newIndent = Indent.getNoneIndent()
            }

            FUN_BODY, VAR_DEF -> {
                newIndent = Indent.getNormalIndent()
            }

            LINE_COMMENT -> {
                newIndent = when (parent) {
                    is JassFun, is JassGlob -> Indent.getNormalIndent()
                    else -> Indent.getNoneIndent()
                }
            }
        }

        // -- typedef
        if (typeAligner != null) {
            when (nodeType) {
                EXTENDS -> {
                    newAlignment = typeAligner.alignment(JassCodeStyleSettings::AT_TYPE_DECL_EXTENDS.name)
                }

                /*
                TYPE_NAME_BASE -> {
                    newAlignment = typeAligner.alignment(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_BASE_RIGHT.name)
                    newNode = newNode.firstChildNode.firstChildNode
                }
                 */
            }
        }

        // -- globals
        if (globAligner != null) {
            when (nodeType) {
                ARRAY -> {
                    newAlignment = globAligner.alignment(JassCodeStyleSettings::AT_GVAR_ARRAY.name)
                }

                ID -> {
                    newAlignment = globAligner.alignment(JassCodeStyleSettings::AT_GVAR_NAME.name)
                }

                EQ -> {
                    newAlignment = globAligner.alignment(JassCodeStyleSettings::AT_GVAR_ASSIGN.name)
                }
            }
        }

        // -- nativ
        if (nativAligner != null) {
            when (nodeType) {
                NATIVE -> newAlignment = nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NATIVE.name)
                FUN_NAME -> {
                    newAlignment = nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NAME.name)
                    newNode = newNode.firstChildNode
                }

                TAKES -> {
                    newAlignment = nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_TAKES.name)

                }

                PARAM -> {
                    if (jass.AT_NATIVE_DECL_ARGUMENT) {
                        val children = childNode.treeParent.getChildren(null)
                        var index = -1
                        for (child in children) {
                            if (isWhitespaceOrEmpty(child)) continue
                            if (childNode.elementType !== child.elementType) continue
                            index++
                            if (childNode !== child) continue
                            newAlignment = nativAligner.argument(index)
                            break
                        }
                    }
                }

                RETURNS -> newAlignment = nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_RETURNS.name)
            }
        }

        return JassBlock(
            node = newNode,
            indent = newIndent,
            alignment = newAlignment,
            code = code,
            common = common,
            jass = jass,
            typeAligner = if (nodeType == TYPE_DEF) typeAlignerAll else typeAligner,
            globAligner = if (nodeType == GLOB) JassGlobAligner(jass) else globAligner,
            nativAligner = if (nodeType == NATIV) nativAlignerAll else nativAligner
        )
    }

    override fun getSpacing(child1: Block?, child2: Block): Spacing? {
        val sac = if (common.SPACE_AFTER_COMMA) 1 else 0
        val sbc = if (common.SPACE_BEFORE_COMMA) 1 else 0
        val saao = if (common.SPACE_AROUND_ASSIGNMENT_OPERATORS) 1 else 0

        return SpacingBuilder(code, instance)
            // type
            .after(TYPE).spacing(1, 1, 0, false, 0)
            .around(TYPE_NAME).spacing(1, 1, 0, false, 0)
            .around(EXTENDS).spacing(1, 1, 0, false, 0)

            // fun
            .after(TAKES).spacing(1, 1, 0, false, 0)
            .between(FUNCTION, FUN_HEAD).spacing(1, 1, 0, false, 0)
            .between(FUN_HEAD, FUN_BODY).spacing(1, 1, 1, false, 5)

            // token
            .around(ARRAY).spacing(1, 1, 0, false, 0)
            .around(ID).spacing(1, 1, 0, false, 0)
            .after(COMMA).spacing(sac, sac, 0, false, 0)
            .before(COMMA).spacing(sbc, sbc, 0, false, 0)
            .around(EQ).spacing(saao, saao, 0, false, 0)

            // ---
            .before(VAR_DEF).spacing(1, 1, 0, false, 0)

            // paren
            .between(LPAREN, ARG_LIST).spacing(0, 0, 0, false, 0)
            .between(ARG_LIST, RPAREN).spacing(0, 0, 0, false, 0)
            .between(LPAREN, RPAREN).spacing(0, 0, 0, false, 0)

            // statement
            .between(STMT, STMT).spacing(1, 5, 1, true, 5)
            .between(LINE_COMMENT, STMT).spacing(1, 5, 1, true, 5)
            .after(IF).spacing(1, 1, 0, false, 0)
            .before(THEN).spacing(1, 1, 0, false, 0)
            .after(THEN).spacing(1, 1, 1, false, 5)
            .before(LOOP).spacing(1, 1, 0, false, 0)
            .after(LOOP).spacing(1, 1, 1, false, 5)
            // CallStmt
            .between(CALL, FUN_CALL).spacing(1, 1, 0, false, 0)
            // FunCall
            .between(FUN_NAME, LPAREN).spacing(0, 0, 0, false, 0)

            // all
            .between(TYPE_NAME, ID).spacing(1, 1, 0, false, 0)
            .around(NATIVE).spacing(1, 1, 0, false, 0)
            .around(TAKEZ).spacing(1, 1, 0, false, 0)
            .after(RETURNS).spacing(1, 1, 0, false, 0)

            // return
            .getSpacing(this, child1, child2)
    }

    override fun getChildAttributes(newChildIndex: Int): ChildAttributes {
        if (node.psi is JassFile) {
            return ChildAttributes(Indent.getNoneIndent(), null)
        }

        when (node.elementType) {
            FUN, LOOP_STMT, IF_STMT, ELSE_STMT, ELSE_IF_STMT -> return ChildAttributes(Indent.getNormalIndent(), null)
            FUN_BODY -> return ChildAttributes(Indent.getNoneIndent(), null)
        }

        return super.getChildAttributes(newChildIndex)
    }

    override fun isIncomplete(): Boolean {
        if (node.psi is JassFile) return true

        val type = node.elementType
        val typeLast = node.lastChildNode?.elementType
        return when (type) {
            GLOB -> typeLast != ENDGLOBALS
            FUN -> typeLast != ENDFUNCTION
            IF_STMT -> typeLast != ENDIF
            LOOP_STMT -> typeLast != ENDLOOP
            else -> false
        }
    }

    override fun isLeaf(): Boolean = isOneOf(node, TYPE_NAME)
}
