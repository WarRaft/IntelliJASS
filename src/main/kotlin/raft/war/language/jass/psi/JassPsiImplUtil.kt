package raft.war.language.jass.psi

import com.intellij.navigation.ItemPresentation
import com.intellij.psi.PsiElement
import raft.war.language.jass.psi.JassTypes.ID
import javax.swing.Icon

object JassPsiImplUtil {

    @JvmStatic
    fun getKey(element: JassFunName): String {
        return element.node.findChildByType(ID)?.text ?: return ""
    }

    @JvmStatic
    fun getName(element: JassFunName): String = getKey(element)

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
}
