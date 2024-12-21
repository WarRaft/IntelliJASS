package raft.war.language.jass.structure

import com.intellij.lang.Language
import com.intellij.psi.PsiElement
import com.intellij.ui.breadcrumbs.BreadcrumbsProvider
import raft.war.language.jass.JassLanguage
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassGlob
import raft.war.language.jass.psi.JassLoopStmt

class JassBreadcrumbsProvider : BreadcrumbsProvider {
    override fun getLanguages(): Array<Language> = arrayOf(JassLanguage.instance)

    override fun getElementInfo(element: PsiElement): String = when (element) {
        is JassFun -> "function ${element.funHead.funName?.text}"
        else -> element.text
    }

    override fun acceptElement(element: PsiElement): Boolean = when (element) {
        is JassFun,
        is JassLoopStmt,
        is JassGlob
            -> true

        else -> false
    }

}
