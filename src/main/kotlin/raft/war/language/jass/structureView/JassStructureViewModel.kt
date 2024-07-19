package raft.war.language.jass.structureView

import com.intellij.ide.structureView.StructureViewModel.ElementInfoProvider
import com.intellij.ide.structureView.StructureViewModelBase
import com.intellij.ide.structureView.StructureViewTreeElement
import com.intellij.ide.util.treeView.smartTree.Sorter
import com.intellij.openapi.editor.Editor
import com.intellij.psi.PsiFile
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassFunCall

class JassStructureViewModel(editor: Editor?, psiFile: PsiFile?) : StructureViewModelBase(
    psiFile!!, editor, JassStructureViewElement(psiFile)
), ElementInfoProvider {
    override fun getSorters(): Array<Sorter> = arrayOf(Sorter.ALPHA_SORTER)

    override fun isAlwaysShowsPlus(element: StructureViewTreeElement): Boolean = true

    override fun isAlwaysLeaf(element: StructureViewTreeElement): Boolean = element.value is JassFun

    override fun getSuitableClasses(): Array<Class<*>> = arrayOf(JassFun::class.java)
}
