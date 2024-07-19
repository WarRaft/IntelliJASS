package raft.war.language.jass


import com.intellij.codeInsight.daemon.LineMarkerInfo
import com.intellij.codeInsight.daemon.LineMarkerProvider
import com.intellij.openapi.editor.markup.GutterIconRenderer
import com.intellij.psi.PsiElement
import com.intellij.util.FunctionUtil
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassNativ

class JassLineMarkerProvider : LineMarkerProvider {
    override fun getLineMarkerInfo(element: PsiElement): LineMarkerInfo<*>? {
        if (element is JassFun) {
            val desc = "Function definition"
            return LineMarkerInfo<PsiElement>(
                element.function,
                element.textRange,
                JassIcons.function,
                FunctionUtil.constant(desc),
                null,
                GutterIconRenderer.Alignment.RIGHT
            ) { desc }
        }

        if (element is JassNativ) {
            val desc = "Native definition"
            return LineMarkerInfo<PsiElement>(
                element.native,
                element.textRange,
                JassIcons.native,
                FunctionUtil.constant(desc),
                null,
                GutterIconRenderer.Alignment.RIGHT
            ) { desc }
        }

        return null
    }
}

