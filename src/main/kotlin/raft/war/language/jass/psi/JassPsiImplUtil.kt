package raft.war.language.jass.psi

import com.intellij.navigation.ItemPresentation
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiReference
import raft.war.language.jass.psi.JassTypes.ID
import raft.war.language.jass.psi.funName.JassFunNameEl
import raft.war.language.jass.psi.reference.JassReference
import javax.swing.Icon

object JassPsiImplUtil {

    @JvmStatic
    fun getKey(element: JassFunNameEl): String {
        val text = element.node.findChildByType(ID)?.text
        return text ?: return ""
    }

    @JvmStatic
    fun getName(element: JassFunNameEl): String = element.text

    @JvmStatic
    fun setName(element: JassFunNameEl, newName: String?): PsiElement = element

    @JvmStatic
    fun getNameIdentifier(element: JassFunNameEl): PsiElement? = element.node.findChildByType(ID)?.psi

    @JvmStatic
    fun getPresentation(element: JassFunNameEl): ItemPresentation = object : ItemPresentation {
        override fun getPresentableText(): String = element.text
        override fun getLocationString(): String = element.containingFile.name
        override fun getIcon(unused: Boolean): Icon? = element.getIcon(0)
    }

    @JvmStatic
    fun getReference(element: JassFunNameEl): PsiReference {
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
