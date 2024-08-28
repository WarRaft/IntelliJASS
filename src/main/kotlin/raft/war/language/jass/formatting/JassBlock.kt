package raft.war.language.jass.formatting

import com.intellij.formatting.*
import com.intellij.lang.ASTNode
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import com.intellij.psi.formatter.FormatterUtil.isWhitespaceOrEmpty
import raft.war.ide.formatting.IdeBlock
import raft.war.language.jass.JassLanguage.Companion.instance
import raft.war.language.jass.formatting.aligner.JassGlobAligner
import raft.war.language.jass.psi.JassFunTake
import raft.war.language.jass.psi.JassTypes.*
import raft.war.language.jass.psi.file.JassFile

class JassBlock(override val data: JassBlockData) : IdeBlock(data) {

    override fun makeSubBlock(childNode: ASTNode): Block {
        var node = childNode
        val nodeType = node.elementType
        var indent = data.indent
        var alignment = data.alignment

        val parent = childNode.psi.parent

        if (parent is JassFile && isOneOf(childNode, TYPE_DEF, NATIV, GLOB, FUN, LINE_COMMENT)) {
            indent = Indent.getNoneIndent()
        }

        when (nodeType) {
            TYPE_NAME -> {
                alignment = when {
                    data.typeAligner != null -> data.typeAligner.alignment(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_RIGHT.name)
                    data.globAligner != null -> data.globAligner.alignment(JassCodeStyleSettings::AT_GVAR_TYPE.name)
                    else -> alignment
                }
                node = node.firstChildNode
            }

            STMT, FUNCTION, ENDFUNCTION, LOOP, ENDLOOP, ELSE_STMT, ELSE_IF_STMT, ENDIF -> {
                //indent = Indent.getNoneIndent()
            }

            FUN_BODY -> {
                indent = Indent.getNormalIndent()
            }
        }

        // -- typedef
        if (data.typeAligner != null) {
            when (nodeType) {
                EXTENDS -> {
                    alignment = data.typeAligner.alignment(JassCodeStyleSettings::AT_TYPE_DECL_EXTENDS.name)
                }

                TYPE_NAME_BASE -> {
                    alignment = data.typeAligner.alignment(JassCodeStyleSettings::AT_TYPE_DECL_TYPE_BASE_RIGHT.name)
                    node = node.firstChildNode.firstChildNode
                }
            }
        }

        // -- globals
        if (data.globAligner != null) {
            when (nodeType) {
                ARRAY -> {
                    alignment = data.globAligner.alignment(JassCodeStyleSettings::AT_GVAR_ARRAY.name)
                }

                ID -> {
                    alignment = data.globAligner.alignment(JassCodeStyleSettings::AT_GVAR_NAME.name)
                }

                EQ -> {
                    alignment = data.globAligner.alignment(JassCodeStyleSettings::AT_GVAR_ASSIGN.name)
                }
            }
        }

        // -- nativ
        if (data.nativAligner != null) {
            when (nodeType) {
                NATIVE -> alignment = data.nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NATIVE.name)
                FUN_NAME -> {
                    alignment = data.nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_NAME.name)
                    node = node.firstChildNode
                }

                NOTHING -> {
                    if (data.jass.AT_NATIVE_DECL_ARGUMENT) {
                        if (parent is JassFunTake) {
                            if (parent.nothing != null) {
                                alignment = data.nativAligner.argument(0)
                            }
                        }
                    }
                }

                TAKES -> {
                    alignment = data.nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_TAKES.name)

                }

                PARAM -> {
                    if (data.jass.AT_NATIVE_DECL_ARGUMENT) {
                        val children = childNode.treeParent.getChildren(null)
                        var index = -1
                        for (child in children) {
                            if (isWhitespaceOrEmpty(child)) continue
                            if (childNode.elementType !== child.elementType) continue
                            index++
                            if (childNode !== child) continue
                            alignment = data.nativAligner.argument(index)
                            break
                        }
                    }
                }

                RETURNS -> alignment = data.nativAligner.named(JassCodeStyleSettings::AT_NATIVE_DECL_RETURNS.name)
            }
        }

        return JassBlock(
            JassBlockData(
                node = node,
                code = data.code,
                jass = data.jass,
                indent = indent,
                alignment = alignment,
                typeAligner = if (nodeType == TYPE_DEF) data.typeAlignerAll else data.typeAligner,
                globAligner = if (nodeType == GLOB) JassGlobAligner(data.jass) else data.globAligner,
                nativAligner = if (nodeType == NATIV) data.nativAlignerAll else data.nativAligner,
            )
        )
    }

    override fun getSpacing(child1: Block?, child2: Block): Spacing? {
        val code = data.code.getCommonSettings(instance.id)

        val sac = if (code.SPACE_AFTER_COMMA) 1 else 0
        val sbc = if (code.SPACE_BEFORE_COMMA) 1 else 0
        val saao = if (code.SPACE_AROUND_ASSIGNMENT_OPERATORS) 1 else 0

        return SpacingBuilder(data.code, instance)
            // type
            .after(TYPE).spacing(1, 1, 0, false, 0)
            .around(TYPE_NAME).spacing(1, 1, 0, false, 0)
            .around(EXTENDS).spacing(1, 1, 0, false, 0)

            // stmt
            .after(STMT).spacing(1, 10, 1, true, 10)

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

            // statement
            .around(STMT).spacing(1, 1, 1, false, 5)
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
            .around(FUN_TAKE).spacing(1, 1, 0, false, 0)
            .after(RETURNS).spacing(1, 1, 0, false, 0)

            // return
            .getSpacing(this, child1, child2)
    }

    override fun getChildAttributes(newChildIndex: Int): ChildAttributes {
        if (node.psi is JassFile) {
            return ChildAttributes(Indent.getNoneIndent(), null)
        }

        when (node.elementType) {
            FUN, LOOP_STMT, IF_STMT, ELSE_STMT, ELSE_IF_STMT -> ChildAttributes(Indent.getNormalIndent(), null)
        }

        return super.getChildAttributes(newChildIndex)
    }

    override fun isIncomplete(): Boolean {
        if (node.psi is JassFile) return true

        val type = node.elementType
        val typeLast = node.lastChildNode?.elementType
        when (type) {
            GLOB -> return typeLast != ENDGLOBALS
            FUN -> return typeLast != ENDFUNCTION
            IF_STMT -> return typeLast != ENDIF
            LOOP_STMT -> return typeLast != ENDLOOP
        }
        return false
    }

    override fun isLeaf(): Boolean = isOneOf(node, TYPE_NAME, TYPE_NAME_BASE)
}
