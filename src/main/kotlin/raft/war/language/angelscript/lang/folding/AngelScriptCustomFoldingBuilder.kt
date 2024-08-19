package raft.war.language.angelscript.lang.folding

import com.intellij.lang.ASTNode
import com.intellij.lang.folding.CustomFoldingBuilder
import com.intellij.lang.folding.FoldingDescriptor
import com.intellij.openapi.editor.Document
import com.intellij.openapi.project.DumbAware
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiComment
import com.intellij.psi.PsiElement
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.psi.util.elementType
import com.intellij.psi.util.startOffset
import raft.war.ide.IdeMultiHostInjector.Companion.INJECT_JASS
import raft.war.language.angelscript.psi.file.AngelScriptFile
import raft.war.language.angelscript.lang.ANGELSCRIPT_FILE
import raft.war.language.angelscript.lang.folding.AngelScriptCodeFoldingSettings.Companion.instance
import raft.war.language.angelscript.psi.AngelScriptTypes.ENUMS
import raft.war.language.angelscript.psi.AngelScriptTypes.LINE_COMMENT

internal class AngelScriptCustomFoldingBuilder : CustomFoldingBuilder(), DumbAware {
    override fun isCustomFoldingRoot(node: ASTNode): Boolean {
        val type = node.elementType
        return type === ANGELSCRIPT_FILE || type === ENUMS
    }

    override fun buildLanguageFoldRegions(
        descriptors: MutableList<FoldingDescriptor>,
        root: PsiElement,
        document: Document,
        quick: Boolean
    ) {
        if (root !is AngelScriptFile) return

        val psiElements = PsiTreeUtil.findChildrenOfAnyType(
            root,
            PsiComment::class.java,
            raft.war.language.angelscript.psi.AngelScriptEnums::class.java
        )

        for (element in psiElements) {
            val type = element.elementType

            if (type == LINE_COMMENT && element.text.startsWith(INJECT_JASS)) {
                descriptors.add(
                    FoldingDescriptor(
                        element,
                        TextRange.create(element.startOffset, element.startOffset + 3)
                    )
                )
            }

            if (element is raft.war.language.angelscript.psi.AngelScriptEnums) {
                val id: PsiElement = element.id

                val s = id.node
                val e = element.getNode()

                descriptors.add(
                    FoldingDescriptor(
                        element,
                        TextRange.create(s.startOffset + s.textLength, e.startOffset + e.textLength)
                    )
                )
            }
        }
    }

    override fun getLanguagePlaceholderText(node: ASTNode, range: TextRange): String? {
        val type = node.elementType

        if (type === LINE_COMMENT) {
            return ""
        }

        if (type === ENUMS) {
            val psi = node.getPsi(raft.war.language.angelscript.psi.AngelScriptEnums::class.java)
            val block = psi.enumStatBlock
            return if (block == null) "..." else sizeable(block.enumItemList)
        }
        return null
    }

    private fun sizeable(list: List<*>): String {
        val size = list.size
        return if (size == 0) " ... " else " ($size) "
    }

    override fun isRegionCollapsedByDefault(node: ASTNode): Boolean {
        val type = node.elementType
        val settings = instance

        return when {
            type === ENUMS -> settings.isFoldEnum
            type === LINE_COMMENT -> true
            else -> false
        }
    }
}
