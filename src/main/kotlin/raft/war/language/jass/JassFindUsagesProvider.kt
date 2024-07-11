package raft.war.language.jass

import com.intellij.lang.cacheBuilder.DefaultWordsScanner
import com.intellij.lang.cacheBuilder.WordsScanner
import com.intellij.lang.findUsages.FindUsagesProvider
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiNamedElement
import com.intellij.psi.tree.TokenSet
import raft.war.language.jass.psi.JassTypes.*

// https://plugins.jetbrains.com/docs/intellij/find-usages.html

internal class JassFindUsagesProvider : FindUsagesProvider {
    override fun getWordsScanner(): WordsScanner = DefaultWordsScanner(
        /* lexer = */ JassFlexAdapter(),
        /* identifierTokenSet = */ TokenSet.create(FUN_NAME),
        /* commentTokenSet = */ TokenSet.EMPTY,
        /* literalTokenSet = */TokenSet.create(FUN_NAME),
        /* skipCodeContextTokenSet = */ TokenSet.EMPTY,
        /* processAsWordTokenSet = */ TokenSet.create(FUN_NAME)
    )

    override fun canFindUsagesFor(psiElement: PsiElement): Boolean = psiElement is PsiNamedElement

    override fun getHelpId(psiElement: PsiElement): String? = null

    override fun getType(element: PsiElement): String {
        return ""
    }

    override fun getDescriptiveName(element: PsiElement): String {

        return ""
    }

    override fun getNodeText(element: PsiElement, useFullName: Boolean): String {
        return ""
    }
}