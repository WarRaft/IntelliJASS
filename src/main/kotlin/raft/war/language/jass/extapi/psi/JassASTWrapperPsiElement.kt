package raft.war.language.jass.extapi.psi

import com.intellij.extapi.psi.ASTWrapperPsiElement
import com.intellij.lang.ASTNode
import com.intellij.psi.*
import com.intellij.psi.PsiReferenceService.Hints
import com.intellij.psi.search.FileTypeIndex
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.openapi.fileTypes.JassFileType
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassPsiElementImpl
import raft.war.language.jass.psi.JassReference
import java.util.ArrayList

abstract class JassASTWrapperPsiElement(node: ASTNode) : ASTWrapperPsiElement(node), JassPsiElementImpl,
    HintedReferenceHost {

    override fun getReferences(hints: Hints): Array<PsiReference> {
        print("getReferences | $node \n")

        val list = mutableListOf<PsiReference>()

        list.add(JassReference(node.psi, node.textRange))

        val project = node.psi.project

        if (node.psi is JassFunName) {
            //val e = node.psi as JassFunName
            for (virtualFile in FileTypeIndex.getFiles(JassFileType.instance, GlobalSearchScope.allScope(project))) {
                val jfile = PsiManager.getInstance(project).findFile(virtualFile)
                if (jfile != null) {
                    val jfuns = PsiTreeUtil.getChildrenOfType(jfile, JassFun::class.java)
                    if (jfuns != null) {
                        for (jfun in jfuns) {
                            val name = jfun.funName
                            if (name != null) {
                                list.add(JassReference(node.psi, name.textRange))
                            }
                        }
                    }
                }
            }
        }

        return list.toTypedArray()
    }

    override fun shouldAskParentForReferences(hints: Hints): Boolean {
        return false
    }
}
