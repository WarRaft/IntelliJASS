package guru.xgm.language.angelscript.lang.annotation

import com.intellij.lang.annotation.AnnotationHolder
import com.intellij.lang.annotation.Annotator
import com.intellij.lang.annotation.HighlightSeverity
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiElement
import guru.xgm.plugin.lang.injection.general.PluginScriptInjector.Companion.INJECT_JASS
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptSyntaxHighlighterBase
import guru.xgm.language.angelscript.psi.AngelScriptDataType
import guru.xgm.language.angelscript.psi.AngelScriptStr
import guru.xgm.language.angelscript.psi.AngelScriptTypes

internal class AngelScriptAnnotator : Annotator {
    override fun annotate(element: PsiElement, holder: AnnotationHolder) {
        val textRange = element.textRange
        val type = element.node.elementType

        if (element is AngelScriptDataType) {
            holder
                .newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(textRange)
                .textAttributes(AngelScriptSyntaxHighlighterBase.TYPE_NAME_KEY).create()
            return
        }

        if (type === AngelScriptTypes.LINE_COMMENT && element.text.startsWith(INJECT_JASS)) {
            holder
                .newSilentAnnotation(HighlightSeverity.INFORMATION)
                .range(TextRange(element.textOffset + 3, element.textOffset + INJECT_JASS.length))
                .textAttributes(AngelScriptSyntaxHighlighterBase.INJECTOR).create()
            return
        }

        if (element is AngelScriptStr || type === AngelScriptTypes.RAWVAL) {
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
                            .textAttributes(AngelScriptSyntaxHighlighterBase.VALID_STRING_ESCAPE_KEY).create()
                        s += 1
                    }

                    else -> holder.newAnnotation(HighlightSeverity.ERROR, "Invalid escape sequence")
                        .range(tr)
                        .textAttributes(AngelScriptSyntaxHighlighterBase.INVALID_STRING_ESCAPE_KEY).create()
                }
            }
        }
    }
}
