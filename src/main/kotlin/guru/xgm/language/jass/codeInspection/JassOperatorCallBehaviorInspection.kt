package guru.xgm.language.jass.codeInspection

import com.intellij.codeInspection.*
import com.intellij.codeInspection.options.OptPane
import com.intellij.openapi.project.Project
import com.intellij.psi.PsiElementVisitor
import com.intellij.psi.PsiParserFacade
import com.intellij.psi.PsiWhiteSpace
import guru.xgm.language.jass.codeInspection.JassInspectionBundle.message
import guru.xgm.language.jass.psi.JassCallStmt
import guru.xgm.language.jass.psi.JassElementFactory.createToken
import guru.xgm.language.jass.psi.JassElementFactory.recreateCallStmt
import guru.xgm.language.jass.psi.JassFunCall
import guru.xgm.language.jass.psi.JassTypes
import guru.xgm.language.jass.psi.JassVisitor

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
        return object : JassVisitor() {
            override fun visitCallStmt(callStmt: JassCallStmt) {
                super.visitPsiElement(callStmt)

                val funcCall = callStmt.funCall
                val funcCallName = funcCall.id

                val callToken = callStmt.node.findChildByType(JassTypes.CALL)
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
            val funcCall = funcCallName.parent as JassFunCall
            val callStmt = funcCall.parent as JassCallStmt

            val callStmtClone = callStmt.copy() as JassCallStmt
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
            val funcCall = funcCallName.parent as JassFunCall
            val ws = funcCall.prevSibling
            val call = ws.prevSibling
            if (ws !is PsiWhiteSpace || call.node.elementType !== JassTypes.CALL) return
            ws.delete()
            call.delete()
        }
    }
}
