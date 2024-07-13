package raft.war.language.jass.refactor

import com.intellij.patterns.ElementPattern
import com.intellij.patterns.ElementPatternCondition
import com.intellij.patterns.InitialPatternCondition
import com.intellij.psi.PsiElement
import com.intellij.refactoring.rename.RenameInputValidator
import com.intellij.util.ProcessingContext
import raft.war.language.jass.psi.JassNamedElement

val regex = Regex("[a-zA-Z][a-zA-Z0-9_]*")

class JassRenameInputValidator : RenameInputValidator {
    override fun getPattern(): ElementPattern<out PsiElement> = object : ElementPattern<PsiElement> {
        override fun accepts(o: Any?): Boolean = o is JassNamedElement

        override fun accepts(o: Any?, context: ProcessingContext?): Boolean = accepts(o)

        override fun getCondition(): ElementPatternCondition<PsiElement> =
            ElementPatternCondition(object : InitialPatternCondition<PsiElement>(PsiElement::class.java) {
                override fun accepts(o: Any?, context: ProcessingContext?) = false
            })
    }

    override fun isInputValid(newName: String, element: PsiElement, context: ProcessingContext): Boolean =
        regex.matches(newName)
}
