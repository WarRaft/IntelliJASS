package raft.war.language.jass.psi

import com.intellij.openapi.project.Project
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiFileFactory
import raft.war.language.jass.JassLanguage.Companion.instance
import raft.war.language.jass.psi.file.JassFile

class JassElementTextFactory {
    companion object {
        private fun createFile(project: Project, text: String): JassFile {
            val name = "dummy.j"
            return PsiFileFactory.getInstance(project).createFileFromText(name, instance, text) as JassFile
        }

        fun createToken(project: Project, text: String): PsiElement = createFile(project, text).firstChild

        private fun createFun(project: Project, name: String): JassFun =
            createFile(project, "function $name endfunction").firstChild as JassFun

        fun getId(project: Project, name: String): PsiElement = createFun(project, name).funHead.funName!!.id

        fun recreateCallStmt(
            project: Project,
            callStmt: JassCallStmt
        ): JassCallStmt {
            val file = createFile(project, "function a " + callStmt.text + " endfunction")
            val jfun = file.firstChild as JassFun
            val stmtNew = jfun.funBody.stmtList[0]
            return stmtNew.callStmt!!
        }

        fun recreateExpr(project: Project, value: String): JassExpr? {
            val file = createFile(project, "globals int a = $value endglobals")
            return (file.firstChild as JassGlob).gvarList[0].getVarDef().expr
        }

        fun replaceExprChild(project: Project, target: PsiElement, value: String) {
            val child = recreateExpr(project, value)!!.firstChild ?: return
            target.replace(child)
        }

        fun replaceExprChildChild(project: Project, target: PsiElement, value: String) {
            val child = recreateExpr(project, value)!!.firstChild.firstChild ?: return
            target.replace(child)
        }

        fun getStrVal(project: Project, text: String): PsiElement {
            val file = createFile(project, "globals int a = \"$text\" endglobals")
            return ((file.firstChild as JassGlob).gvarList[0].getVarDef().expr as JassPrimExpr).str!!.strval
        }
    }
}
