package raft.war.language.jass.psi

import com.intellij.openapi.project.Project
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiFileFactory
import raft.war.language.jass.lang.JassLanguage.Companion.instance
import raft.war.language.jass.psi.*

object JassElementFactory {
    private fun createFile(project: Project, text: String): JassPsiFileBase {
        val name = "dummy.j"
        return PsiFileFactory.getInstance(project).createFileFromText(name, instance, text) as JassPsiFileBase
    }

    @JvmStatic
    fun createToken(project: Project, text: String): PsiElement {
        val file = createFile(project, text)
        return file.firstChild
    }

    @JvmStatic
    fun recreateCallStmt(project: Project, callStmt: raft.war.language.jass.psi.JassCallStmt): raft.war.language.jass.psi.JassCallStmt? {
        val file = createFile(project, "function fuckingCrutch " + callStmt.text + " endfunction")
        val funcDecl = file.firstChild as raft.war.language.jass.psi.JassFun
        val stmtNew = funcDecl.stmtList[0]
        return stmtNew.callStmt
    }

    @JvmStatic
    fun recreateExpr(project: Project, value: String): raft.war.language.jass.psi.JassExpr? {
        val file = createFile(project, "globals int fuckingCrutch = $value endglobals")
        return (file.firstChild as raft.war.language.jass.psi.JassGlob).gvarList[0].getVar().expr
    }

    fun replaceExprChild(project: Project, target: PsiElement, value: String) {
        val child = recreateExpr(project, value)!!.firstChild ?: return
        target.replace(child)
    }
}
