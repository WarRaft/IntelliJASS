package raft.war.language.jass.codeInspection.number

import com.intellij.codeInspection.*
import com.intellij.openapi.project.Project
import com.intellij.psi.PsiElementVisitor
import raft.war.language.jass.codeInspection.JassInspectionBundle.message
import raft.war.language.jass.psi.JassElementTextFactory.Companion.recreateExpr
import raft.war.language.jass.psi.JassPrimExpr
import raft.war.language.jass.psi.JassVisitor

class JassRawcodeUnsafeInspection : LocalInspectionTool(), CleanupLocalInspectionTool {
    private val toHexQuickFix = ToHexQuickFix()
    private val toIntQuickFix = ToIntQuickFix()

    override fun buildVisitor(holder: ProblemsHolder, isOnTheFly: Boolean): PsiElementVisitor {
        return object : JassVisitor() {
            override fun visitPrimExpr(o: JassPrimExpr) {
                super.visitPrimExpr(o)
                val psiraw = o.rawval ?: return
                val raw = JassRawcode(psiraw)
                if (raw.error || !raw.validLength || raw.safe) return
                //holder.registerProblem(psiraw, "Rawcode must contain 1 or 4 symbols");
                holder.registerProblem(
                    psiraw,
                    message("number.rawcode.unsafe.description"),
                    toHexQuickFix,
                    toIntQuickFix
                )
            }
        }
    }

    private class ToHexQuickFix : LocalQuickFix {
        override fun getName(): String {
            return message("number.rawcode.unsafe.quickfix.tohex")
        }

        override fun getFamilyName(): String {
            return name
        }

        override fun applyFix(project: Project, descriptor: ProblemDescriptor) {
            val psi = descriptor.psiElement
            val raw = JassRawcode(psi)
            psi.parent.replace(recreateExpr(project, raw.hex)!!)
        }
    }

    private class ToIntQuickFix : LocalQuickFix {
        override fun getName(): String {
            return message("number.rawcode.unsafe.quickfix.toint")
        }

        override fun getFamilyName(): String {
            return name
        }

        override fun applyFix(project: Project, descriptor: ProblemDescriptor) {
            val psi = descriptor.psiElement
            val raw = JassRawcode(psi)
            psi.parent.replace(recreateExpr(project, raw.intstr)!!)
        }
    }
}
