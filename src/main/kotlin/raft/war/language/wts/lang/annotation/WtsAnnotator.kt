package raft.war.language.wts.lang.annotation

import com.intellij.lang.annotation.AnnotationHolder
import com.intellij.lang.annotation.Annotator
import com.intellij.lang.annotation.HighlightSeverity
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiElement
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase
import java.util.regex.Pattern

internal class WtsAnnotator : Annotator {
    override fun annotate(element: PsiElement, holder: AnnotationHolder) {
        val type = element.node.elementType
        if (type === raft.war.language.wts.psi.WtsTypes.VALUE) {
            val text = element.text
            val s = element.textOffset

            // braces
            val sa = s + text.indexOf("{")
            val sb = s + text.indexOf("}")

            holder
                .newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(TextRange(sa, sa + 1))
                .textAttributes(JassSyntaxHighlighterBase.JASS_LINE_COMMENT).create()

            holder
                .newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(TextRange(sb, sb + 1))
                .textAttributes(JassSyntaxHighlighterBase.JASS_LINE_COMMENT).create()

            // |r
            run {
                var i = -1
                while ((text.indexOf("|r", i + 1).also { i = it }) != -1) {
                    holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(TextRange(s + i, s + i + 2))
                        .textAttributes(JassSyntaxHighlighterBase.JASS_LINE_COMMENT).create()
                    i++
                }
            }

            // |n
            var i = -1
            while ((text.indexOf("|n", i + 1).also { i = it }) != -1) {
                holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(TextRange(s + i, s + i + 2))
                    .textAttributes(JassSyntaxHighlighterBase.JASS_LINE_COMMENT).create()
                i++
            }

            // color
            val pattern = Pattern.compile("(\\|C[a-fA-F0-9]{8})")
            val matcher = pattern.matcher(text)
            while (matcher.find()) {
                val a = s + matcher.start()
                holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(TextRange(a, a + matcher.group().length))
                    .textAttributes(JassSyntaxHighlighterBase.JASS_LINE_COMMENT).create()
            }
        }
    }
}
