package raft.war.language.angelscript.inspection

import com.intellij.lang.annotation.AnnotationHolder
import com.intellij.lang.annotation.Annotator
import com.intellij.lang.annotation.HighlightSeverity
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiElement
import raft.war.ide.IdeMultiHostInjector.Companion.INJECT_JASS
import raft.war.language.angelscript.highlight.AngelScriptSyntaxHighlighterBase
import raft.war.language.angelscript.psi.AngelScriptFunName
import raft.war.language.angelscript.psi.AngelScriptStr
import raft.war.language.angelscript.psi.AngelScriptType
import raft.war.language.angelscript.psi.AngelScriptTypes.*

internal class AngelScriptAnnotator : Annotator {
    override fun annotate(element: PsiElement, holder: AnnotationHolder) {
        val textRange = element.textRange
        val type = element.node.elementType

        when {
            element is AngelScriptType -> {
                holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(textRange)
                    .textAttributes(AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_TYPE_NAME).create()
                return
            }

            element is AngelScriptFunName -> {
                holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(textRange)
                    .textAttributes(AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_FUN_USER).create()
                return
            }

            type === LINE_COMMENT && element.text.startsWith(
                INJECT_JASS
            ) -> {
                holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(TextRange(element.textOffset + 3, element.textOffset + INJECT_JASS.length))
                    .textAttributes(AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_INJECTOR).create()
                return
            }

            element is AngelScriptStr || type === RAWVAL -> {
                val text = element.text

                var s = 0
                val e = text.length
                if (e == 0) return
                while (s < e) {
                    s = text.indexOf("\\", s + 1)
                    if (s < 0) break
                    val c = text.substring(s + 1, s + 2)

                    val tr = TextRange(textRange.startOffset + s, textRange.startOffset + s + 2)

                    when (c) {
                        "0", "\\", "'", "\"", "n", "r", "t" -> {
                            holder
                                .newSilentAnnotation(HighlightSeverity.INFORMATION)
                                .range(tr)
                                .textAttributes(AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_VALID_STRING_ESCAPE)
                                .create()
                            s += 1
                        }

                        else -> holder.newAnnotation(HighlightSeverity.ERROR, "Invalid escape sequence")
                            .range(tr)
                            .textAttributes(AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_INVALID_STRING_ESCAPE).create()
                    }
                }
            }
        }
    }
}
