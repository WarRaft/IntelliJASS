package raft.war.language.angelscript.psi

import com.intellij.openapi.project.Project
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiFileFactory
import raft.war.language.angelscript.lang.AngelScriptLanguage.Companion.instance

object AngelScriptElementFactory {
    private fun createFile(project: Project, text: String): AngelScriptPsiFileBase {
        val name = "dummy.as"
        return PsiFileFactory.getInstance(project).createFileFromText(name, instance, text) as AngelScriptPsiFileBase
    }

    private fun recreateExpr(project: Project, value: String): AngelScriptExpr {
        val file = createFile(project, "int fuckingCrutch = $value;")
        return (file.firstChild as AngelScriptVar).exprList[0]
    }

    fun replaceExprChild(project: Project, target: PsiElement, value: String) {
        val child = recreateExpr(project, value).firstChild ?: return
        target.replace(child)
    }
}
