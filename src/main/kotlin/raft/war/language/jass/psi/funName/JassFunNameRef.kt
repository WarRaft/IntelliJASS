package raft.war.language.jass.psi.funName

import com.intellij.openapi.util.TextRange
import com.intellij.psi.*
import com.intellij.psi.search.FileTypeIndex
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.openapi.fileTypes.JassFileType
import raft.war.language.jass.psi.JassFun

class JassFunNameRef(element: PsiNamedElement, textRange: TextRange) :
    PsiReferenceBase<PsiNamedElement?>(element, textRange), PsiPolyVariantReference {
    override fun resolve(): PsiElement? {
        val resolveResults = multiResolve(false)
        return resolveResults.firstOrNull()?.element
    }

    override fun multiResolve(incompleteCode: Boolean): Array<ResolveResult> {
        val out: MutableList<PsiElementResolveResult> = mutableListOf();


        for (virtualFile in FileTypeIndex.getFiles(
            JassFileType.instance,
            GlobalSearchScope.allScope(element.project)
        )) {
            val psifile = PsiManager.getInstance(element.project).findFile(virtualFile) ?: continue
            val psifuns = PsiTreeUtil.getChildrenOfType(psifile, JassFun::class.java) ?: continue
            for (psifun in psifuns) {
                val funname = psifun.funName ?: continue
                if (element.text != funname.text) continue
                out.add(PsiElementResolveResult(funname))
            }
        }

        return out.toTypedArray()
    }

    override fun getVariants(): Array<Any> {
        /*
        val project = myElement.project
        val objects = project.getService(TSTypeLookupService::class.java).getObjects(project)
        return objects.map { obj ->
            LookupElementBuilder
                .create(obj)
                .withIcon(JassIcons.FILE)
                .withTypeText(obj.containingFile?.name)
                .withCaseSensitivity(false)
        }.toTypedArray()

         */
        return arrayOf()
    }

    override fun handleElementRename(newElementName: String): PsiElement = element.setName(newElementName)
}
