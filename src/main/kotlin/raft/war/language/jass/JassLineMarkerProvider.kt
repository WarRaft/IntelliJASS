package raft.war.language.jass


import com.intellij.codeInsight.daemon.LineMarkerInfo
import com.intellij.codeInsight.daemon.LineMarkerProvider
import com.intellij.openapi.editor.markup.GutterIconRenderer
import com.intellij.psi.PsiElement
import com.intellij.util.FunctionUtil
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassNativ

class JassLineMarkerProvider : LineMarkerProvider {

    override fun collectSlowLineMarkers(
        elements: MutableList<out PsiElement>,
        result: MutableCollection<in LineMarkerInfo<*>>
    ) {
        //for (element in elements) {
        //val info = getLineMarkerInfo(element)
        //if (info != null) result.add(info)
        //}
    }

    override fun getLineMarkerInfo(element: PsiElement): LineMarkerInfo<*>? {
        when (element) {
            is JassFun -> {
                val desc = "Function definition"
                return LineMarkerInfo(
                    element.function,
                    element.function.textRange,
                    JassIcons.function,
                    FunctionUtil.constant(desc),
                    null,
                    GutterIconRenderer.Alignment.RIGHT
                ) { desc }
            }

            is JassNativ -> {
                val desc = "Native definition"
                return LineMarkerInfo(
                    element.native,
                    element.native.textRange,
                    JassIcons.native,
                    FunctionUtil.constant(desc),
                    null,
                    GutterIconRenderer.Alignment.RIGHT
                ) { desc }
            }

            else -> return null
        }
    }
}

