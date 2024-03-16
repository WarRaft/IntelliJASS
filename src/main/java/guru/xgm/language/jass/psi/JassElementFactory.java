package guru.xgm.language.jass.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFileFactory;
import guru.xgm.language.jass.extapi.psi.JassPsiFileBase;
import guru.xgm.language.jass.lang.JassLanguage;
import org.jetbrains.annotations.NotNull;

public class JassElementFactory {
    private static JassPsiFileBase createFile(Project project, String text) {
        String name = "dummy.j";
        return (JassPsiFileBase) PsiFileFactory.getInstance(project).createFileFromText(name, JassLanguage.INSTANCE, text);
    }

    public static PsiElement createToken(Project project, String text) {
        final JassPsiFileBase file = createFile(project, text);
        return file.getFirstChild();
    }

    public static JassCallStmt recreateCallStmt(Project project, JassCallStmt callStmt) {
        final JassPsiFileBase file = createFile(project, "function fuckingCrutch " + callStmt.getText() + " endfunction");
        final JassFun funcDecl = (JassFun) file.getFirstChild();
        final JassStmt stmtNew = funcDecl.getStmtList().get(0);
        return stmtNew.getCallStmt();
    }

    public static JassExpr recreateExpr(Project project, String value) {
        final JassPsiFileBase file = createFile(project, "globals int fuckingCrutch = " + value + " endglobals");
        return ((JassGlob) file.getFirstChild()).getGvarList().get(0).getVar().getExpr();
    }

    public static void replaceExprChild(@NotNull Project project, @NotNull PsiElement target, @NotNull String value) {
        final var child = recreateExpr(project, value).getFirstChild();
        if (child == null) return;
        target.replace(child);
    }
}
