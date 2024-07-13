package raft.war.language.jass.refactor

import com.intellij.lang.refactoring.RefactoringSupportProvider
import com.intellij.psi.PsiElement
import raft.war.language.jass.psi.JassNamedElement

internal class JassRefactoringSupportProvider : RefactoringSupportProvider() {
    override fun isMemberInplaceRenameAvailable(elementToRename: PsiElement, context: PsiElement?): Boolean =
        elementToRename is JassNamedElement
}
