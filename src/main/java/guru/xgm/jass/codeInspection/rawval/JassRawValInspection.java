package guru.xgm.jass.codeInspection.rawval;

import com.intellij.codeInspection.*;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElementVisitor;
import guru.xgm.jass.psi.JassElementFactory;
import guru.xgm.jass.psi.JassPrimExpr;
import guru.xgm.jass.psi.JassVisitor;
import org.jetbrains.annotations.NotNull;

public final class JassRawValInspection extends LocalInspectionTool implements CleanupLocalInspectionTool {
    private final ToNumberQuickFix toNumberQuickFix = new ToNumberQuickFix();

    @NotNull
    @Override
    public PsiElementVisitor buildVisitor(@NotNull final ProblemsHolder holder, boolean isOnTheFly) {
        return new JassVisitor() {
            @Override
            public void visitPrimExpr(@NotNull JassPrimExpr o) {
                super.visitPrimExpr(o);
                final var psiraw = o.getRawval();
                if (psiraw == null) return;
                final JassRawVal raw = new JassRawVal(psiraw);
                if (raw.error) {
                    holder.registerProblem(psiraw, "Rawcode parsing error");
                    return;
                }

                if (raw.bytes.length != 1 && raw.bytes.length != 4) {
                    holder.registerProblem(psiraw, "Rawcode must contain 1 or 4 symbols");
                    return;
                }

                if (!raw.safe) {
                    holder.registerProblem(psiraw, "Rawcode has unsafe character", toNumberQuickFix);
                }
            }
        };
    }

    private static class ToNumberQuickFix implements LocalQuickFix {
        @NotNull
        @Override
        public String getName() {
            return "Convert to number";
        }

        @NotNull
        public String getFamilyName() {
            return getName();
        }

        public void applyFix(@NotNull Project project, @NotNull ProblemDescriptor descriptor) {
            final var psi = descriptor.getPsiElement();
            final var raw = new JassRawVal(psi);
            psi.getParent().replace(JassElementFactory.recreateExpr(project, raw.hex));
        }

    }
}
