package raft.war.language.jass.structureView

import com.intellij.ide.projectView.PresentationData
import com.intellij.ide.structureView.StructureViewTreeElement
import com.intellij.ide.util.treeView.smartTree.SortableTreeElement
import com.intellij.ide.util.treeView.smartTree.TreeElement
import com.intellij.navigation.ItemPresentation
import com.intellij.psi.NavigatablePsiElement
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.file.JassPsiFileBase
import raft.war.language.jass.psi.impl.JassFunImpl

class JassStructureViewElement(private val myElement: NavigatablePsiElement) : StructureViewTreeElement,
    SortableTreeElement {
    override fun getValue(): Any = myElement

    override fun navigate(requestFocus: Boolean) = myElement.navigate(requestFocus)

    override fun canNavigate(): Boolean = myElement.canNavigate()

    override fun canNavigateToSource(): Boolean = myElement.canNavigateToSource()

    override fun getAlphaSortKey(): String {
        val name = myElement.name
        return name ?: ""
    }

    override fun getPresentation(): ItemPresentation {
        val presentation = myElement.presentation
        return presentation ?: PresentationData()
    }

    override fun getChildren(): Array<TreeElement> {
        val treeElements: MutableList<TreeElement> = mutableListOf()
        if (myElement is JassPsiFileBase) {
            val properties = PsiTreeUtil.getChildrenOfTypeAsList(myElement, JassFun::class.java)
            for (property in properties) {
                treeElements.add(JassStructureViewElement(property as JassFunImpl))
            }
        }
        return treeElements.toTypedArray<TreeElement>()
    }
}
