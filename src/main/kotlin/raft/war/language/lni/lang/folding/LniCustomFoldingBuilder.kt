package raft.war.language.lni.lang.folding

import com.intellij.lang.ASTNode
import com.intellij.lang.folding.CustomFoldingBuilder
import com.intellij.lang.folding.FoldingDescriptor
import com.intellij.openapi.editor.Document
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiComment
import com.intellij.psi.PsiElement
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.lni.extapi.psi.LniPsiFileBase
import raft.war.language.lni.lang.LNI_FILE
import raft.war.language.lni.lang.folding.LniCodeFoldingSettings.Companion.instance
import raft.war.language.lni.psi.*
import raft.war.language.lni.psi.LniTypes.*

internal class LniCustomFoldingBuilder : CustomFoldingBuilder(), DumbAware {
    override fun isCustomFoldingRoot(node: ASTNode): Boolean {
        val type = node.elementType
        return type === LNI_FILE || type === HEAD
    }

    override fun buildLanguageFoldRegions(
        descriptors: MutableList<FoldingDescriptor>,
        root: PsiElement,
        document: Document,
        quick: Boolean
    ) {
        if (root !is LniPsiFileBase) return

        val psiElements = PsiTreeUtil.findChildrenOfAnyType(
            root,
            PsiComment::class.java,
            LniItem::class.java,
            raft.war.language.lni.psi.LniList::class.java
        )

        for (element in psiElements) {
            val end = element.textOffset + element.textLength

            if (element is LniItem) {
                var start: Int
                val head: LniHead? = element.head
                if (head == null) {
                    val list: List<LniProperty> = element.propertyList
                    if (list.isEmpty()) continue
                    val id = list[0].id
                    start = id.textOffset + id.textLength
                } else {
                    start = head.textOffset + head.textLength
                }

                if (start < 0) continue
                descriptors.add(FoldingDescriptor(element, TextRange.create(start, end)))
                continue
            }

            /*
            if (element is LniList) {
                val lb: PsiElement = element.lbrace
                val rb: PsiElement = element.rbrace

                descriptors.add(
                    FoldingDescriptor(
                        element,
                        TextRange.create(lb.textOffset + lb.textLength, rb.textOffset)
                    )
                )
            }

             */
        }
    }

    override fun getLanguagePlaceholderText(node: ASTNode, range: TextRange): String? {
        val type = node.elementType
        if (type === ITEM) {
            val psi = node.getPsi(LniItem::class.java)
            val size = psi.propertyList.size
            return if (size == 0) "..." else "...($size)"
        }

        if (type === LIST) {
            val psi = node.getPsi(raft.war.language.lni.psi.LniList::class.java)
            val size = psi.listItemList.size
            return if (size == 0) "..." else "($size)"
        }

        return null
    }

    override fun isRegionCollapsedByDefault(node: ASTNode): Boolean {
        val type = node.elementType
        val settings = instance

        if (type === ITEM) return settings.isFoldItem
        if (type === LIST) return settings.isFoldList
        return false
    }
}
