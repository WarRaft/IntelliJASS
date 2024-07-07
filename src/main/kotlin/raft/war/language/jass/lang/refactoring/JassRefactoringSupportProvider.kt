package raft.war.language.jass.lang.refactoring

import com.intellij.lang.refactoring.RefactoringSupportProvider
import com.intellij.psi.PsiElement
import raft.war.language.jass.psi.funName.JassFunNameEl

internal class JassRefactoringSupportProvider : RefactoringSupportProvider() {
    override fun isMemberInplaceRenameAvailable(elementToRename: PsiElement, context: PsiElement?): Boolean {
        return (elementToRename is JassFunNameEl)
    }
}
