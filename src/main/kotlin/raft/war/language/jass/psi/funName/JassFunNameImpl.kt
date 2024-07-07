package raft.war.language.jass.psi.funName

import com.intellij.extapi.psi.ASTWrapperPsiElement
import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiReference
import raft.war.language.jass.psi.JassNamedElement

abstract class JassFunNameImpl(node: ASTNode) : ASTWrapperPsiElement(node), JassNamedElement {

    override fun setName(name: String): PsiElement {
        return this
    }

    override fun getName(): String {
        return this.text
    }

    override fun getNameIdentifier(): PsiElement? {
        return this
    }

    override fun getReference(): PsiReference? =
        references.last()

    override fun getReferences(): Array<PsiReference> =
        arrayOf(
            JassFunNameRef(this, TextRange(0, this.textLength)),
        )
}
