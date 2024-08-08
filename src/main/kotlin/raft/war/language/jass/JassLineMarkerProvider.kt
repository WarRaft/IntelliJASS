package raft.war.language.jass

import com.intellij.codeInsight.daemon.LineMarkerInfo
import com.intellij.codeInsight.daemon.LineMarkerProvider
import com.intellij.openapi.editor.markup.GutterIconRenderer
import com.intellij.psi.PsiElement
import com.intellij.psi.util.elementType
import com.intellij.util.FunctionUtil
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassFunHead
import raft.war.language.jass.psi.JassNativ
import raft.war.language.jass.psi.JassTypes.ID

class JassLineMarkerProvider : LineMarkerProvider {

    override fun getLineMarkerInfo(element: PsiElement): LineMarkerInfo<*>? {
        if (element.elementType == ID && element.parent.parent is JassFunHead) {
            when (val fn = element.parent.parent.parent) {
                is JassFun -> {
                    val desc = "Function definition"
                    return LineMarkerInfo(
                        element,
                        fn.function.textRange,
                        JassIcons.function,
                        FunctionUtil.constant(desc),
                        null,
                        GutterIconRenderer.Alignment.RIGHT
                    ) { desc }
                }

                is JassNativ -> {
                    val desc = "Native definition"
                    return LineMarkerInfo(
                        element,
                        fn.native.textRange,
                        JassIcons.native,
                        FunctionUtil.constant(desc),
                        null,
                        GutterIconRenderer.Alignment.RIGHT
                    ) { desc }
                }
            }
        }

        return null
    }
}

