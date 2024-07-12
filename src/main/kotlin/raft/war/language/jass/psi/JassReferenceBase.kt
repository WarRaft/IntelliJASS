package raft.war.language.jass.psi

import com.intellij.openapi.util.TextRange
import com.intellij.psi.*
import com.intellij.psi.impl.source.resolve.ResolveCache

// https://plugins.jetbrains.com/docs/intellij/psi-references.html
// https://plugins.jetbrains.com/docs/intellij/references-and-resolve.html

// https://github.com/azrdev/coco-idea-plugin/blob/master/src/de/qrdn/coco_idea/psi/impl/CocoPsiImplUtil.java
// https://plugins.jetbrains.com/docs/intellij/references-and-resolve.html#psi-references

abstract class JassReferenceBase(@JvmField protected val psiElement: PsiElement, rangeInParent: TextRange) :
    PsiReferenceBase<PsiElement?>(psiElement, rangeInParent), PsiPolyVariantReference {

    protected abstract fun resolveInner(incompleteCode: Boolean): List<PsiElement>

    override fun multiResolve(incompleteCode: Boolean): Array<ResolveResult> =
        ResolveCache.getInstance(psiElement.project).resolveWithCaching(
            this, { referenceBase, _ ->
                referenceBase.resolveInner(false)
                    .map { PsiElementResolveResult(it) }
                    .toTypedArray()
            },
            true, false
        )

    override fun resolve(): PsiElement? {
        val resolveResults = multiResolve(false)
        return if (resolveResults.size == 1) resolveResults[0].element else null
    }

    override fun equals(other: Any?): Boolean =
        if (other is JassReferenceBase) psiElement == other.psiElement else false

    override fun getVariants(): Array<Any> = resolveInner(true).toTypedArray()

    override fun hashCode(): Int = psiElement.hashCode()
}
