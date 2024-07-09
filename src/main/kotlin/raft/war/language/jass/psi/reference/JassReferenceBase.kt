package raft.war.language.jass.psi.reference

import com.intellij.openapi.util.TextRange
import com.intellij.psi.*
import com.intellij.psi.impl.source.resolve.ResolveCache

abstract class JassReferenceBase(@JvmField protected val psiElement: PsiElement, rangeInParent: TextRange) :
    PsiReferenceBase<PsiElement?>(psiElement, rangeInParent), PsiPolyVariantReference {

    protected abstract fun resolveInner(incompleteCode: Boolean): List<PsiElement>

    override fun multiResolve(incompleteCode: Boolean): Array<ResolveResult> {
        return ResolveCache.getInstance(psiElement.project).resolveWithCaching(
            this, { referenceBase, _ ->
                referenceBase.resolveInner(false)
                    .map { PsiElementResolveResult(it) }
                    .toTypedArray()
            },
            true, false
        )
    }

    override fun resolve(): PsiElement? {
        val resolveResults = multiResolve(false)
        return if (resolveResults.size == 1) resolveResults[0].element else null
    }

    override fun equals(other: Any?): Boolean {
        return if (other is JassReferenceBase) psiElement == other.psiElement else false
    }

    override fun getVariants(): Array<Any> {
        return resolveInner(true).toTypedArray()
    }

    override fun hashCode(): Int {
        return psiElement.hashCode()
    }
}
