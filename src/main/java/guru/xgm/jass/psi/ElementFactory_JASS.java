package guru.xgm.jass.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFileFactory;
import guru.xgm.jass.extapi.psi.PsiFileBase_JASS;
import guru.xgm.jass.openapi.fileTypes.LanguageFileType_JASS;

public class ElementFactory_JASS {

    public static JASS_Property createProperty(Project project, String name) {
        final PsiFileBase_JASS file = createFile(project, name);
        return (JASS_Property) file.getFirstChild();
    }

    public static PsiFileBase_JASS createFile(Project project, String text) {
        String name = "dummy.j";
        return (PsiFileBase_JASS) PsiFileFactory.getInstance(project).createFileFromText(name, LanguageFileType_JASS.INSTANCE, text);
    }

    public static JASS_Property createProperty(Project project, String name, String value) {
        final PsiFileBase_JASS file = createFile(project, name + " = " + value);
        return (JASS_Property) file.getFirstChild();
    }

    public static PsiElement createCRLF(Project project) {
        final PsiFileBase_JASS file = createFile(project, "\n");
        return file.getFirstChild();
    }

}
