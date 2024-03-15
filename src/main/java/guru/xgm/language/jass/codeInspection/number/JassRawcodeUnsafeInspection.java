package guru.xgm.language.jass.codeInspection.number;

import com.intellij.codeInspection.*;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElementVisitor;
import guru.xgm.language.jass.codeInspection.JassInspectionBundle;
import guru.xgm.language.jass.psi.JassElementFactory;
import guru.xgm.language.jass.psi.JassPrimExpr;
import guru.xgm.language.jass.psi.JassVisitor;
import org.jetbrains.annotations.NotNull;

public final class JassRawcodeUnsafeInspection extends LocalInspectionTool implements CleanupLocalInspectionTool {
    private final ToHexQuickFix toHexQuickFix = new ToHexQuickFix();
    private final ToIntQuickFix toIntQuickFix = new ToIntQuickFix();

    @NotNull
    @Override
    public PsiElementVisitor buildVisitor(@NotNull final ProblemsHolder holder, boolean isOnTheFly) {
        return new JassVisitor() {
            @Override
            public void visitPrimExpr(@NotNull JassPrimExpr o) {
                super.visitPrimExpr(o);
                final var psiraw = o.getRawval();
                if (psiraw == null) return;
                final JassRawcode raw = new JassRawcode(psiraw);
                if (raw.error || !raw.validLength || raw.safe) return;
                //holder.registerProblem(psiraw, "Rawcode must contain 1 or 4 symbols");
                holder.registerProblem(
                        psiraw,
                        JassInspectionBundle.message("number.rawcode.unsafe.description"),
                        toHexQuickFix,
                        toIntQuickFix
                );
            }
        };
    }

    private static class ToHexQuickFix implements LocalQuickFix {
        @NotNull
        @Override
        public String getName() {
            return JassInspectionBundle.message("number.rawcode.unsafe.quickfix.tohex");
        }

        @NotNull
        @Override
        public String getFamilyName() {
            return getName();
        }

        public void applyFix(@NotNull Project project, @NotNull ProblemDescriptor descriptor) {
            final var psi = descriptor.getPsiElement();
            final var raw = new JassRawcode(psi);
            psi.getParent().replace(JassElementFactory.recreateExpr(project, raw.hex));
        }
    }

    private static class ToIntQuickFix implements LocalQuickFix {
        @NotNull
        @Override
        public String getName() {
            return JassInspectionBundle.message("number.rawcode.unsafe.quickfix.toint");
        }

        @NotNull
        @Override
        public String getFamilyName() {
            return getName();
        }

        public void applyFix(@NotNull Project project, @NotNull ProblemDescriptor descriptor) {
            final var psi = descriptor.getPsiElement();
            final var raw = new JassRawcode(psi);
            psi.getParent().replace(JassElementFactory.recreateExpr(project, raw.intstr));
        }
    }
}
