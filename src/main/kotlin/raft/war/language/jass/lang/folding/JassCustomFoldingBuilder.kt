package raft.war.language.jass.lang.folding

import com.intellij.lang.ASTNode
import com.intellij.lang.folding.CustomFoldingBuilder
import com.intellij.lang.folding.FoldingDescriptor
import com.intellij.openapi.editor.Document
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiComment
import com.intellij.psi.PsiElement
import com.intellij.psi.tree.IElementType
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.psi.JassPsiFileBase
import raft.war.language.jass.lang.JASS_FILE
import raft.war.language.jass.psi.*

internal class JassCustomFoldingBuilder : CustomFoldingBuilder(), DumbAware {
    override fun isCustomFoldingRoot(node: ASTNode): Boolean {
        val type = node.elementType
        return type === JASS_FILE || type === raft.war.language.jass.psi.JassTypes.GLOB || type === raft.war.language.jass.psi.JassTypes.FUN
    }

    override fun buildLanguageFoldRegions(
        descriptors: MutableList<FoldingDescriptor>,
        root: PsiElement,
        document: Document,
        quick: Boolean
    ) {
        if (root !is JassPsiFileBase) return

        val psiElements = PsiTreeUtil.findChildrenOfAnyType(
            root,
            PsiComment::class.java,
            raft.war.language.jass.psi.JassGlob::class.java,
            raft.war.language.jass.psi.JassFun::class.java,
            raft.war.language.jass.psi.JassIfStmt::class.java,
            raft.war.language.jass.psi.JassLoopStmt::class.java
        )

        for (element in psiElements) {
            if (element is raft.war.language.jass.psi.JassFun) {
                val start: PsiElement? = if (element.funRet != null) element.funRet else element.funTake

                if (start == null) continue

                val s = start.node
                val e = element.getNode().findChildByType(raft.war.language.jass.psi.JassTypes.ENDFUNCTION, s)
                if (s == null || e == null) continue

                descriptors.add(
                    FoldingDescriptor(
                        element,
                        TextRange.create(s.startOffset + s.textLength, e.startOffset)
                    )
                )
                continue
            }

            if (element is raft.war.language.jass.psi.JassIfStmt) {
                val expr: raft.war.language.jass.psi.JassExpr = element.expr ?: continue

                val s = expr.node
                val e = element.getNode().findChildByType(raft.war.language.jass.psi.JassTypes.ENDIF, s)
                if (s == null || e == null) continue

                descriptors.add(
                    FoldingDescriptor(
                        element,
                        TextRange.create(s.startOffset + s.textLength, e.startOffset)
                    )
                )
                continue
            }

            if (element is raft.war.language.jass.psi.JassLoopStmt) {
                foldSimple(element, raft.war.language.jass.psi.JassTypes.LOOP, raft.war.language.jass.psi.JassTypes.ENDLOOP, descriptors)
                continue
            }

            if (element is raft.war.language.jass.psi.JassGlob) {
                foldSimple(element, raft.war.language.jass.psi.JassTypes.GLOBALS, raft.war.language.jass.psi.JassTypes.ENDGLOBALS, descriptors)
            }
        }
    }

    override fun getLanguagePlaceholderText(node: ASTNode, range: TextRange): String? {
        val type = node.elementType

        if (type === raft.war.language.jass.psi.JassTypes.GLOB) {
            val psi = node.getPsi(raft.war.language.jass.psi.JassGlob::class.java)
            val size = psi.gvarList.size
            return if (size == 0) " ... " else " ($size) "
        }

        if (type === raft.war.language.jass.psi.JassTypes.FUN || type === raft.war.language.jass.psi.JassTypes.IF_STMT || type === raft.war.language.jass.psi.JassTypes.LOOP_STMT
        ) return " ... "

        return null
    }

    override fun isRegionCollapsedByDefault(node: ASTNode): Boolean {
        val type = node.elementType
        //final CodeFoldingSettings settings = CodeFoldingSettings.getInstance();
        val jass = JassCodeFoldingSettings.instance

        if (type === raft.war.language.jass.psi.JassTypes.GLOB) return jass.isFoldGlobals
        if (type === raft.war.language.jass.psi.JassTypes.FUN) return jass.isFoldFunction
        if (type === raft.war.language.jass.psi.JassTypes.IF_STMT) return jass.isFoldIf
        if (type === raft.war.language.jass.psi.JassTypes.LOOP_STMT) return jass.isFoldLoop

        return false
    }

    private fun foldSimple(
        element: PsiElement,
        start: IElementType,
        end: IElementType,
        descriptors: MutableList<FoldingDescriptor>
    ) {
        val s = element.node.findChildByType(start)
        val e = element.node.findChildByType(end, s)

        if (s == null || e == null) return

        descriptors.add(FoldingDescriptor(element, TextRange.create(s.startOffset + s.textLength, e.startOffset)))
    }
}
