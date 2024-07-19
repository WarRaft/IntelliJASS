package raft.war.language.jass.structureView

import com.intellij.ide.structureView.StructureViewModel.ElementInfoProvider
import com.intellij.ide.structureView.StructureViewModelBase
import com.intellij.ide.structureView.StructureViewTreeElement
import com.intellij.ide.util.treeView.smartTree.Sorter
import com.intellij.openapi.editor.Editor
import com.intellij.psi.PsiFile
import raft.war.language.jass.psi.JassExpr
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassNativ
import raft.war.language.jass.psi.file.JassFile

class JassStructureViewModel(editor: Editor?, psiFile: PsiFile) : StructureViewModelBase(
    psiFile, editor, JassStructureViewElement(psiFile)
), ElementInfoProvider {

    override fun getSorters(): Array<Sorter> = arrayOf(Sorter.ALPHA_SORTER)

    override fun isAlwaysShowsPlus(element: StructureViewTreeElement): Boolean = false

    override fun isAlwaysLeaf(element: StructureViewTreeElement): Boolean = element.value is JassExpr
    
    /**
     * Suitable class for [JassStructureAwareNavbar].
     */
    override fun getSuitableClasses(): Array<Class<*>> = arrayOf(
        JassFile::class.java,
        JassFun::class.java,
        JassNativ::class.java
    )
}
