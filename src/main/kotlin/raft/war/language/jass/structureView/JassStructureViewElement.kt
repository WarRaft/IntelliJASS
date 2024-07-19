package raft.war.language.jass.structureView

import com.intellij.ide.projectView.PresentationData
import com.intellij.ide.structureView.StructureViewTreeElement
import com.intellij.ide.util.treeView.smartTree.SortableTreeElement
import com.intellij.ide.util.treeView.smartTree.TreeElement
import com.intellij.navigation.ItemPresentation
import com.intellij.psi.NavigatablePsiElement
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.JassIcons
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassNativ
import raft.war.language.jass.psi.file.JassFile
import raft.war.language.jass.psi.impl.JassFunImpl
import raft.war.language.jass.psi.impl.JassNativImpl
import javax.swing.Icon


class JassStructureViewElement(private val element: NavigatablePsiElement) : StructureViewTreeElement,
    SortableTreeElement {
    override fun getValue(): Any = element

    override fun navigate(requestFocus: Boolean) = element.navigate(requestFocus)

    override fun canNavigate(): Boolean = element.canNavigate()

    override fun canNavigateToSource(): Boolean = element.canNavigateToSource()

    override fun getAlphaSortKey(): String {
        val name = element.name
        return name ?: ""
    }

    override fun getPresentation(): ItemPresentation {
        val presentation = element.presentation
        return presentation ?: object : PresentationData() {
            override fun getPresentableText(): String {
                if (element is JassFun) {
                    return element.funHead?.funName?.text ?: "Undefined"
                }
                if (element is JassNativ) {
                    return element.funHead?.funName?.text ?: "Undefined"
                }
                return "Undefined"
            }

            override fun getIcon(open: Boolean): Icon? {
                if (element is JassFun) return JassIcons.function
                if (element is JassNativ) return JassIcons.native
                return null
            }

            override fun getLocationString(): String = element.containingFile.name
        }
    }

    override fun getChildren(): Array<TreeElement> {
        val treeElements: MutableList<TreeElement> = mutableListOf()

        if (element is JassFile) {
            val items = PsiTreeUtil.getChildrenOfAnyType(element, JassFun::class.java, JassNativ::class.java)
            for (item in items) {
                if (item is JassFun) treeElements.add(JassStructureViewElement(item as JassFunImpl))
                if (item is JassNativ) treeElements.add(JassStructureViewElement(item as JassNativImpl))
            }
        }
        return treeElements.toTypedArray<TreeElement>()
    }
}
