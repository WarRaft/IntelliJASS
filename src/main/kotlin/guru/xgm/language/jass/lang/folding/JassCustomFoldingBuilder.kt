package guru.xgm.language.jass.lang.folding

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
import guru.xgm.language.jass.psi.JassPsiFileBase
import guru.xgm.language.jass.lang.JASS_FILE
import guru.xgm.language.jass.psi.*

internal class JassCustomFoldingBuilder : CustomFoldingBuilder(), DumbAware {
    override fun isCustomFoldingRoot(node: ASTNode): Boolean {
        val type = node.elementType
        return type === JASS_FILE || type === JassTypes.GLOB || type === JassTypes.FUN
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
            JassGlob::class.java,
            JassFun::class.java,
            JassIfStmt::class.java,
            JassLoopStmt::class.java
        )

        for (element in psiElements) {
            if (element is JassFun) {
                val start: PsiElement? = if (element.funRet != null) element.funRet else element.funTake

                if (start == null) continue

                val s = start.node
                val e = element.getNode().findChildByType(JassTypes.ENDFUNCTION, s)
                if (s == null || e == null) continue

                descriptors.add(
                    FoldingDescriptor(
                        element,
                        TextRange.create(s.startOffset + s.textLength, e.startOffset)
                    )
                )
                continue
            }

            if (element is JassIfStmt) {
                val expr: JassExpr = element.expr ?: continue

                val s = expr.node
                val e = element.getNode().findChildByType(JassTypes.ENDIF, s)
                if (s == null || e == null) continue

                descriptors.add(
                    FoldingDescriptor(
                        element,
                        TextRange.create(s.startOffset + s.textLength, e.startOffset)
                    )
                )
                continue
            }

            if (element is JassLoopStmt) {
                foldSimple(element, JassTypes.LOOP, JassTypes.ENDLOOP, descriptors)
                continue
            }

            if (element is JassGlob) {
                foldSimple(element, JassTypes.GLOBALS, JassTypes.ENDGLOBALS, descriptors)
            }
        }
    }

    override fun getLanguagePlaceholderText(node: ASTNode, range: TextRange): String? {
        val type = node.elementType

        if (type === JassTypes.GLOB) {
            val psi = node.getPsi(JassGlob::class.java)
            val size = psi.gvarList.size
            return if (size == 0) " ... " else " ($size) "
        }

        if (type === JassTypes.FUN || type === JassTypes.IF_STMT || type === JassTypes.LOOP_STMT
        ) return " ... "

        return null
    }

    override fun isRegionCollapsedByDefault(node: ASTNode): Boolean {
        val type = node.elementType
        //final CodeFoldingSettings settings = CodeFoldingSettings.getInstance();
        val jass = JassCodeFoldingSettings.instance

        if (type === JassTypes.GLOB) return jass.isFoldGlobals
        if (type === JassTypes.FUN) return jass.isFoldFunction
        if (type === JassTypes.IF_STMT) return jass.isFoldIf
        if (type === JassTypes.LOOP_STMT) return jass.isFoldLoop

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
