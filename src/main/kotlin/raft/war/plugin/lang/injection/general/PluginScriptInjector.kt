package raft.war.plugin.lang.injection.general

import com.intellij.lang.injection.MultiHostInjector
import com.intellij.lang.injection.MultiHostRegistrar
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiComment
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiLanguageInjectionHost
import com.intellij.psi.util.elementType
import raft.war.language.angelscript.psi.AngelScriptTypes.LINE_COMMENT
import raft.war.language.jass.lang.JassLanguage


// https://plugins.jetbrains.com/docs/intellij/language-injection.html#formatting

internal class PluginScriptInjector : MultiHostInjector {
    companion object {
        const val INJECT_JASS = "//\$jass"
    }

    override fun getLanguagesToInject(registrar: MultiHostRegistrar, context: PsiElement) {
        if (context.elementType == LINE_COMMENT) {
            val text = context.text
            val len = INJECT_JASS.length
            if (text.startsWith(INJECT_JASS) && text.length > len && text[len] == ' ') {
                registrar.startInjecting(JassLanguage.instance)
                registrar.addPlace(
                    "", "",
                    (context as PsiLanguageInjectionHost),
                    TextRange.from(len + 1, text.length - len - 1),
                )
                registrar.doneInjecting()
            }
        }
    }

    override fun elementsToInjectIn(): List<Class<out PsiElement?>> {
        return listOf(PsiComment::class.java)
    }
}
