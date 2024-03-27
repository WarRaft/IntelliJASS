package guru.xgm.language.angelscript.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFileFactory;
import guru.xgm.language.angelscript.extapi.psi.AngelScriptPsiFileBase;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;

public class AngelScriptElementFactory {

    private static AngelScriptPsiFileBase createFile(Project project, String text) {
        String name = "dummy.ass";
        return (AngelScriptPsiFileBase) PsiFileFactory.getInstance(project).createFileFromText(name, AngelScriptLanguage.INSTANCE, text);
    }

    public static AngelScriptExpr recreateExpr(Project project, String value) {
        final var file = createFile(project, "int fuckingCrutch = " + value + ";");
        return ((AngelScriptVar) file.getFirstChild()).getExprList().get(0);
    }

    public static void replaceExprChild(@NotNull Project project, @NotNull PsiElement target, @NotNull String value) {
        final var child = recreateExpr(project, value).getFirstChild();
        if (child == null) return;
        target.replace(child);
    }
}
