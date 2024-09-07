package raft.war.language.jass.refactor.rename

import com.intellij.psi.PsiElement
import com.intellij.refactoring.rename.RenamePsiElementProcessor
import raft.war.language.jass.psi.JassVarName

class JassRenamePsiElementProcessorVarName : RenamePsiElementProcessor() {
    override fun canProcessElement(element: PsiElement): Boolean = element is JassVarName
}
