package raft.war.language.zinc.lang.annotation

import com.intellij.lang.annotation.AnnotationHolder
import com.intellij.lang.annotation.Annotator
import com.intellij.lang.annotation.HighlightSeverity
import com.intellij.psi.PsiElement
import raft.war.language.zinc.openapi.fileTypes.ZincSyntaxHighlighterBase
import raft.war.language.zinc.psi.ZincTypeName

internal class ZincAnnotator : Annotator {
    override fun annotate(element: PsiElement, holder: AnnotationHolder) {
        if (element is ZincTypeName) {
            holder
                .newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(element.getTextRange())
                .textAttributes(ZincSyntaxHighlighterBase.ZINC_TYPE_NAME).create()
        }
    }
}
