package raft.war.language.jass

import com.intellij.codeInsight.daemon.LineMarkerInfo
import com.intellij.codeInsight.daemon.LineMarkerProvider
import com.intellij.openapi.editor.markup.GutterIconRenderer
import com.intellij.psi.PsiElement
import com.intellij.psi.util.elementType
import com.intellij.util.FunctionUtil
import raft.war.language.jass.psi.JassFunHead
import raft.war.language.jass.psi.JassNativ
import raft.war.language.jass.psi.JassTypes.ID

class JassLineMarkerProvider : LineMarkerProvider {

    override fun getLineMarkerInfo(element: PsiElement): LineMarkerInfo<*>? {
        if (element.elementType == ID && element.parent.parent is JassFunHead) {
            val desc = "Function definition"
            return LineMarkerInfo(
                element,
                element.textRange,
                JassIcons.function,
                FunctionUtil.constant(desc),
                null,
                GutterIconRenderer.Alignment.RIGHT
            ) { desc }
        }

        if (element.elementType == ID && element.parent.parent is JassNativ) {
            val desc = "Native definition"
            return LineMarkerInfo(
                element,
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

