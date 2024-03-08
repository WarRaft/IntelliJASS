package guru.xgm.jass.codeInspection.rawval;

import com.intellij.codeInspection.CleanupLocalInspectionTool;
import com.intellij.codeInspection.LocalInspectionTool;
import com.intellij.codeInspection.ProblemsHolder;
import com.intellij.psi.PsiElementVisitor;
import guru.xgm.jass.psi.JassPrimExpr;
import guru.xgm.jass.psi.JassVisitor;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;

public final class JassRawValInspection extends LocalInspectionTool implements CleanupLocalInspectionTool {
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

                System.out.print("raw" + raw.bytes.length + "|" + psiraw.getText() + "| " + Arrays.toString(raw.bytes) + "\n");

                if (raw.bytes.length != 1 && raw.bytes.length != 4) {
                    holder.registerProblem(psiraw, "Rawcode must contain 1 or 4 symbols");
                    return;
                }

                if (!raw.safe) {
                    holder.registerProblem(psiraw, "Rawcode has unsafe character");
                }
            }
        };
    }

}
