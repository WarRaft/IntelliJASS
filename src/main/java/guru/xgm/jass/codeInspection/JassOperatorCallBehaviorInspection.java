package guru.xgm.jass.codeInspection;

import com.intellij.codeInspection.*;
import com.intellij.codeInspection.options.OptPane;
import com.intellij.lang.ASTNode;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.PsiParserFacade;
import com.intellij.psi.PsiWhiteSpace;
import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;

import static com.intellij.codeInspection.options.OptPane.*;

final class JassOperatorCallBehaviorInspection extends LocalInspectionTool implements CleanupLocalInspectionTool {
    private final MissingQuickFix missingQuickFix = new MissingQuickFix();
    private final RedundantQuickFix redundantQuickFix = new RedundantQuickFix();

    enum ErrorWhen {
        MISSING,
        REDUNDANT,
    }

    /**
     * @noinspection PublicField
     */
    public ErrorWhen errorWhen = ErrorWhen.MISSING;

    @Override
    public @NotNull OptPane getOptionsPane() {
        return pane(dropdown(
                "errorWhen",
                JassInspectionBundle.message("operator.call.dropdown.label"),
                option(ErrorWhen.MISSING, JassInspectionBundle.message("operator.call.dropdown.option.missing")),
                option(ErrorWhen.REDUNDANT, JassInspectionBundle.message("operator.call.dropdown.option.redundant"))
        ));

    }

    @NotNull
    @Override
    public PsiElementVisitor buildVisitor(@NotNull final ProblemsHolder holder, boolean isOnTheFly) {

        return new JassVisitor() {
            @Override
            public void visitCallStmt(@NotNull JassCallStmt callStmt) {
                super.visitPsiElement(callStmt);

                final JassFuncCall funcCall = callStmt.getFuncCall();
                final JassFuncCallName funcCallName = funcCall.getFuncCallName();

                final ASTNode callToken = callStmt.getNode().findChildByType(JassTypes.CALL);
                if (callToken == null) {
                    if (errorWhen == ErrorWhen.MISSING) {
                        holder.registerProblem(
                                funcCallName,
                                JassInspectionBundle.message("operator.call.missing.descriptor"),
                                missingQuickFix
                        );
                    }
                } else {
                    if (errorWhen == ErrorWhen.REDUNDANT) {
                        holder.registerProblem(
                                funcCallName,
                                JassInspectionBundle.message("operator.call.redundant.descriptor"),
                                redundantQuickFix
                        );
                    }
                }
            }
        };
    }

    private static class MissingQuickFix implements LocalQuickFix {
        @NotNull
        @Override
        public String getName() {
            return JassInspectionBundle.message("operator.call.missing.quickfix");
        }

        @NotNull
        public String getFamilyName() {
            return getName();
        }

        public void applyFix(@NotNull Project project, @NotNull ProblemDescriptor descriptor) {
            final JassFuncCallName funcCallName = (JassFuncCallName) descriptor.getPsiElement();
            final JassFuncCall funcCall = (JassFuncCall) funcCallName.getParent();
            final JassCallStmt callStmt = (JassCallStmt) funcCall.getParent();

            final JassCallStmt callStmtClone = (JassCallStmt) callStmt.copy();
            final JassFuncCall funcCallCopy = callStmtClone.getFuncCall();

            callStmtClone.addBefore(JassElementFactory.createToken(project, "call"), funcCallCopy);
            callStmtClone.addBefore(PsiParserFacade.getInstance(project).createWhiteSpaceFromText(" "), funcCallCopy);

            callStmt.replace(JassElementFactory.recreateCallStmt(project, callStmtClone));
        }

    }

    private static class RedundantQuickFix implements LocalQuickFix {

        @NotNull
        @Override
        public String getName() {
            return JassInspectionBundle.message("operator.call.redundant.quickfix");
        }

        @NotNull
        public String getFamilyName() {
            return getName();
        }

        public void applyFix(@NotNull Project project, @NotNull ProblemDescriptor descriptor) {
            final JassFuncCallName funcCallName = (JassFuncCallName) descriptor.getPsiElement();
            final JassFuncCall funcCall = (JassFuncCall) funcCallName.getParent();
            final PsiElement ws = funcCall.getPrevSibling();
            final PsiElement call = ws.getPrevSibling();
            if (!(ws instanceof PsiWhiteSpace) || call.getNode().getElementType() != JassTypes.CALL) {
                return;
            }
            ws.delete();
            call.delete();
        }
    }
}
