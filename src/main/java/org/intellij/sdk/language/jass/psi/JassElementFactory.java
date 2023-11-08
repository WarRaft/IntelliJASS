package org.intellij.sdk.language.jass.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFileFactory;
import org.intellij.sdk.language.jass.JassFileType;

public class JassElementFactory {

    public static JassProperty createProperty(Project project, String name) {
        final JassFile file = createFile(project, name);
        return (JassProperty) file.getFirstChild();
    }

    public static JassFile createFile(Project project, String text) {
        String name = "dummy.j";
        return (JassFile) PsiFileFactory.getInstance(project).createFileFromText(name, JassFileType.INSTANCE, text);
    }

    public static JassProperty createProperty(Project project, String name, String value) {
        final JassFile file = createFile(project, name + " = " + value);
        return (JassProperty) file.getFirstChild();
    }

    public static PsiElement createCRLF(Project project) {
        final JassFile file = createFile(project, "\n");
        return file.getFirstChild();
    }

}
