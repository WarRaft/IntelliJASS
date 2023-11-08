package guru.xgm.jgas.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFileFactory;
import guru.xgm.jgas.extapi.psi.PsiFileBase_JGAS;
import guru.xgm.jgas.openapi.fileTypes.LanguageFileType_JGAS;

public class ElementFactory_JGAS {

    public static JGAS_Property createProperty(Project project, String name) {
        final PsiFileBase_JGAS file = createFile(project, name);
        return (JGAS_Property) file.getFirstChild();
    }

    public static PsiFileBase_JGAS createFile(Project project, String text) {
        String name = "dummy.j";
        return (PsiFileBase_JGAS) PsiFileFactory.getInstance(project).createFileFromText(name, LanguageFileType_JGAS.INSTANCE, text);
    }

    public static JGAS_Property createProperty(Project project, String name, String value) {
        final PsiFileBase_JGAS file = createFile(project, name + " = " + value);
        return (JGAS_Property) file.getFirstChild();
    }

    public static PsiElement createCRLF(Project project) {
        final PsiFileBase_JGAS file = createFile(project, "\n");
        return file.getFirstChild();
    }

}
