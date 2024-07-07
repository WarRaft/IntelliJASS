package raft.war.language.jass.psi

import com.intellij.codeInsight.lookup.LookupElement
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.openapi.project.Project
import com.intellij.openapi.util.TextRange
import com.intellij.psi.*
import com.intellij.psi.search.FileTypeIndex
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.icons.JassIcons.FILE
import raft.war.language.jass.openapi.fileTypes.JassFileType.Companion.instance
import java.util.*

// https://plugins.jetbrains.com/docs/intellij/psi-references.html
//https://plugins.jetbrains.com/docs/intellij/references-and-resolve.html

// https://github.com/azrdev/coco-idea-plugin/blob/master/src/de/qrdn/coco_idea/psi/impl/CocoPsiImplUtil.java
// https://plugins.jetbrains.com/docs/intellij/references-and-resolve.html#psi-references

internal class JassReference(element: PsiElement, textRange: TextRange) :
    PsiReferenceBase<PsiElement?>(element, textRange), PsiPolyVariantReference {

    override fun multiResolve(incompleteCode: Boolean): Array<ResolveResult> {
        print("multiResolve\n")

        val project = myElement!!.project
        val results: MutableList<ResolveResult> = ArrayList()
        /*
                if (myElement is JassFunName) {
                    val e = myElement as JassFunName
                    val virtualFiles =
                        FileTypeIndex.getFiles(instance, GlobalSearchScope.allScope(project))
                    for (virtualFile in virtualFiles) {
                        val simpleFile = PsiManager.getInstance(project).findFile(virtualFile) as JassPsiFileBase?
                        if (simpleFile != null) {
                            val item = PsiTreeUtil.getChildrenOfType(simpleFile, JassFunName::class.java)
                            if (item != null) {
                                for (property in item) {
                                    if (e.key == property.key) {
                                        results.add(PsiElementResolveResult(property))
                                    }
                                }
                            }
                        }
                    }
                }

         */
        return results.toTypedArray<ResolveResult>()
    }

    override fun resolve(): PsiElement? {
        print("☢️ resolve\n")
        //val resolveResults = multiResolve(false)
        //return if (resolveResults.size == 1) resolveResults[0].element else null

        return myElement
    }

    override fun getVariants(): Array<Any> {
        print("getVariants\n")
        val project = myElement!!.project
        val properties = findProperties(project)
        val variants: MutableList<LookupElement> = ArrayList()
        for (property in properties) {
            property.key
            if (property.key.isNotEmpty()) {
                variants.add(
                    LookupElementBuilder
                        .create(property).withIcon(FILE)
                        .withTypeText(property.containingFile.name)
                )
            }
        }
        return variants.toTypedArray()
    }

    companion object {
        private fun findProperties(project: Project): List<JassFunName> {
            val result: MutableList<JassFunName> = ArrayList()
            val virtualFiles =
                FileTypeIndex.getFiles(instance, GlobalSearchScope.allScope(project))
            for (virtualFile in virtualFiles) {
                val simpleFile = PsiManager.getInstance(project).findFile(virtualFile) as JassPsiFileBase?
                if (simpleFile != null) {
                    val properties = PsiTreeUtil.getChildrenOfType(simpleFile, JassFunName::class.java)
                    if (properties != null) {
                        Collections.addAll(result, *properties)
                    }
                }
            }
            return result
        }
    }
}
