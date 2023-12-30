package guru.xgm.jass.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFileFactory;
import guru.xgm.jass.extapi.psi.JassPsiFileBase;
import guru.xgm.jass.lang.JassLanguage;

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
        final JassFuncDef funcDecl = (JassFuncDef) file.getFirstChild();
        final JassStmt stmtNew = funcDecl.getStmtList().get(0);
        return stmtNew.getCallStmt();
    }
}

