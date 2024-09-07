package raft.war.language.jass.usages

import com.intellij.lang.HelpID
import com.intellij.lang.cacheBuilder.DefaultWordsScanner
import com.intellij.lang.cacheBuilder.WordsScanner
import com.intellij.lang.findUsages.FindUsagesProvider
import com.intellij.psi.ElementDescriptionUtil
import com.intellij.psi.PsiElement
import com.intellij.psi.tree.TokenSet
import com.intellij.usageView.UsageViewLongNameLocation
import com.intellij.usageView.UsageViewShortNameLocation
import raft.war.language.jass.JassFlexAdapter
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.JassTypes.FUN_NAME
import raft.war.language.jass.psi.JassTypes.VAR_NAME
import raft.war.language.jass.psi.JassVarName

// https://plugins.jetbrains.com/docs/intellij/find-usages.html

internal class JassFindUsagesProvider : FindUsagesProvider {
    override fun getWordsScanner(): WordsScanner = DefaultWordsScanner(
        /* lexer = */ JassFlexAdapter(),
        /* identifierTokenSet = */ TokenSet.create(FUN_NAME, VAR_NAME),
        /* commentTokenSet = */ TokenSet.EMPTY,
        /* literalTokenSet = */TokenSet.create(FUN_NAME, VAR_NAME),
        /* skipCodeContextTokenSet = */ TokenSet.EMPTY,
        /* processAsWordTokenSet = */ TokenSet.create(FUN_NAME, VAR_NAME)
    )

    override fun canFindUsagesFor(psiElement: PsiElement): Boolean = psiElement is JassNamedElement

    override fun getHelpId(psiElement: PsiElement): String = HelpID.FIND_OTHER_USAGES

    override fun getType(element: PsiElement): String = when (element) {
        is JassFunName -> "function"
        is JassVarName -> "variable"
        else -> "unknown"
    }

    override fun getDescriptiveName(element: PsiElement): String =
        ElementDescriptionUtil.getElementDescription(element, UsageViewLongNameLocation.INSTANCE)

    override fun getNodeText(element: PsiElement, useFullName: Boolean): String =
        ElementDescriptionUtil.getElementDescription(element, UsageViewShortNameLocation.INSTANCE)
}
