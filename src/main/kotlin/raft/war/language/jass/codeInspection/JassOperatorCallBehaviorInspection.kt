package raft.war.language.jass.codeInspection

import com.intellij.codeInspection.*
import com.intellij.codeInspection.options.OptPane
import com.intellij.openapi.project.Project
import com.intellij.psi.PsiElementVisitor
import com.intellij.psi.PsiParserFacade
import com.intellij.psi.PsiWhiteSpace
import raft.war.language.jass.codeInspection.JassInspectionBundle.message
import raft.war.language.jass.psi.JassCallStmt
import raft.war.language.jass.psi.JassElementFactory.createToken
import raft.war.language.jass.psi.JassElementFactory.recreateCallStmt
import raft.war.language.jass.psi.JassFunCall
import raft.war.language.jass.psi.JassTypes
import raft.war.language.jass.psi.JassVisitor

internal class JassOperatorCallBehaviorInspection : LocalInspectionTool(), CleanupLocalInspectionTool {
    private val missingQuickFix = MissingQuickFix()
    private val redundantQuickFix = RedundantQuickFix()

    internal enum class ErrorWhen {
        MISSING,
        REDUNDANT,
    }

    var errorWhen: ErrorWhen = ErrorWhen.MISSING

    override fun getOptionsPane(): OptPane {
        return OptPane.pane(
            OptPane.dropdown(
                "errorWhen",
                message("operator.call.dropdown.label"),
                OptPane.option(ErrorWhen.MISSING, message("operator.call.dropdown.option.missing")),
                OptPane.option(ErrorWhen.REDUNDANT, message("operator.call.dropdown.option.redundant"))
            )
        )
    }

    override fun buildVisitor(holder: ProblemsHolder, isOnTheFly: Boolean): PsiElementVisitor {
        return object : raft.war.language.jass.psi.JassVisitor() {
            override fun visitCallStmt(callStmt: raft.war.language.jass.psi.JassCallStmt) {
                super.visitPsiElement(callStmt)

                val funcCall = callStmt.funCall
                val funcCallName = funcCall.id

                val callToken = callStmt.node.findChildByType(raft.war.language.jass.psi.JassTypes.CALL)
                if (callToken == null) {
                    if (errorWhen == ErrorWhen.MISSING) {
                        holder.registerProblem(
                            funcCallName,
                            message("operator.call.missing.descriptor"),
                            missingQuickFix
                        )
                    }
                } else {
                    if (errorWhen == ErrorWhen.REDUNDANT) {
                        holder.registerProblem(
                            funcCallName,
                            message("operator.call.redundant.descriptor"),
                            redundantQuickFix
                        )
                    }
                }
            }
        }
    }

    private class MissingQuickFix : LocalQuickFix {
        override fun getName(): String {
            return message("operator.call.missing.quickfix")
        }

        override fun getFamilyName(): String {
            return name
        }

        override fun applyFix(project: Project, descriptor: ProblemDescriptor) {
            val funcCallName = descriptor.psiElement
            val funcCall = funcCallName.parent as raft.war.language.jass.psi.JassFunCall
            val callStmt = funcCall.parent as raft.war.language.jass.psi.JassCallStmt

            val callStmtClone = callStmt.copy() as raft.war.language.jass.psi.JassCallStmt
            val funcCallCopy = callStmtClone.funCall

            callStmtClone.addBefore(createToken(project, "call"), funcCallCopy)
            callStmtClone.addBefore(PsiParserFacade.getInstance(project).createWhiteSpaceFromText(" "), funcCallCopy)

            callStmt.replace(recreateCallStmt(project, callStmtClone)!!)
        }
    }

    private class RedundantQuickFix : LocalQuickFix {
        override fun getName(): String {
            return message("operator.call.redundant.quickfix")
        }

        override fun getFamilyName(): String {
            return name
        }

        override fun applyFix(project: Project, descriptor: ProblemDescriptor) {
            val funcCallName = descriptor.psiElement
            val funcCall = funcCallName.parent as raft.war.language.jass.psi.JassFunCall
            val ws = funcCall.prevSibling
            val call = ws.prevSibling
            if (ws !is PsiWhiteSpace || call.node.elementType !== raft.war.language.jass.psi.JassTypes.CALL) return
            ws.delete()
            call.delete()
        }
    }
}
