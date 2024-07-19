package raft.war.language.jass


import com.intellij.codeInsight.daemon.LineMarkerInfo
import com.intellij.codeInsight.daemon.LineMarkerProvider
import com.intellij.icons.AllIcons
import com.intellij.openapi.editor.markup.GutterIconRenderer
import com.intellij.psi.PsiElement
import com.intellij.util.FunctionUtil
import raft.war.language.jass.psi.JassFun
import java.util.function.Supplier

class JassLineMarkerProvider : LineMarkerProvider {
    override fun getLineMarkerInfo(element: PsiElement): LineMarkerInfo<*>? {
        if (element is JassFun) {
            return FunctionDefinitionMarkerInfo(element.function)
        }
        return null
    }
}

class FunctionDefinitionMarkerInfo(element: PsiElement) :
    LineMarkerInfo<PsiElement?>(
        element,
        element.textRange,
        AllIcons.Nodes.Function,
        FunctionUtil.constant("Function definition"),
        null,
        GutterIconRenderer.Alignment.RIGHT,
        Supplier<String> { "Function definition" }
    )
