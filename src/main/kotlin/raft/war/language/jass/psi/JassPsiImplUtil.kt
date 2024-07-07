package raft.war.language.jass.psi

import com.intellij.navigation.ItemPresentation
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiManager
import com.intellij.psi.PsiReference
import com.intellij.psi.PsiReferenceService
import com.intellij.psi.search.FileTypeIndex
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.openapi.fileTypes.JassFileType.Companion.instance
import raft.war.language.jass.psi.JassTypes.ID
import javax.swing.Icon

object JassPsiImplUtil {

    @JvmStatic
    fun getKey(element: JassFunName): String {
        val text = element.node.findChildByType(ID)?.text
        return text ?: return ""
    }

    @JvmStatic
    fun getName(element: JassFunName): String = element.text

    @JvmStatic
    fun setName(element: JassFunName, newName: String?): PsiElement = element

    @JvmStatic
    fun getNameIdentifier(element: JassFunName): PsiElement? = element.node.findChildByType(ID)?.psi

    @JvmStatic
    fun getPresentation(element: JassFunName): ItemPresentation = object : ItemPresentation {
        override fun getPresentableText(): String = element.getKey()
        override fun getLocationString(): String = element.containingFile.name
        override fun getIcon(unused: Boolean): Icon? = element.getIcon(0)
    }

    @JvmStatic
    fun getReference(element: JassFunName): PsiReference {
        print("💋 getReference ${element.text} | ${element.textRange} \n")
        return JassReference(element, element.textRange)
    }

    /*
    PsiReference @NotNull [] getReferences(@NotNull PsiReferenceService.Hints hints);


    @JvmStatic
    fun getReferences(element: JassFunName): Array<PsiReference> {
        print("🍒 getReferences $element | ${element.textRange} \n")
        val results = mutableListOf<PsiReference>()

        for (virtualFile in FileTypeIndex.getFiles(instance, GlobalSearchScope.allScope(element.project))) {
            val jfile = PsiManager.getInstance(element.project).findFile(virtualFile) ?: continue
            val namelist = PsiTreeUtil.getChildrenOfType(jfile, JassFunName::class.java)

            print("namelist $namelist \n")

            if (namelist == null) continue



            if (namelist != null) {
                for (property in namelist) {
                    print("item | ${property.textRange}")
                    if (element.key == property.key) {
                        //results.add(JassReference(property, property.textRange))
                    }
                }
            }

        }

        return results.toTypedArray();
    }
     */
}
