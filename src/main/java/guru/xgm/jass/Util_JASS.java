package guru.xgm.jass;

import com.google.common.collect.Lists;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.text.StringUtil;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiComment;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiManager;
import com.intellij.psi.PsiWhiteSpace;
import com.intellij.psi.search.FileTypeIndex;
import com.intellij.psi.search.GlobalSearchScope;
import com.intellij.psi.util.PsiTreeUtil;
import guru.xgm.jass.openapi.fileTypes.LanguageFileType_JASS;
import guru.xgm.jass.extapi.psi.PsiFileBase_JASS;
import org.intellij.sdk.language.jass.psi.JassProperty;
import org.jetbrains.annotations.NotNull;

import java.util.*;

public class Util_JASS {

    /**
     * Searches the entire project for Jass language files with instances of the Jass property with the given key.
     *
     * @param project current project
     * @param key     to check
     * @return matching properties
     */
    public static List<JassProperty> findProperties(Project project, String key) {
        List<JassProperty> result = new ArrayList<>();
        Collection<VirtualFile> virtualFiles =
                FileTypeIndex.getFiles(LanguageFileType_JASS.INSTANCE, GlobalSearchScope.allScope(project));
        for (VirtualFile virtualFile : virtualFiles) {
            PsiFileBase_JASS simpleFile = (PsiFileBase_JASS) PsiManager.getInstance(project).findFile(virtualFile);
            if (simpleFile != null) {
                JassProperty[] properties = PsiTreeUtil.getChildrenOfType(simpleFile, JassProperty.class);
                if (properties != null) {
                    for (JassProperty property : properties) {
                        if (key.equals(property.getKey())) {
                            result.add(property);
                        }
                    }
                }
            }
        }
        return result;
    }

    public static List<JassProperty> findProperties(Project project) {
        List<JassProperty> result = new ArrayList<>();
        Collection<VirtualFile> virtualFiles =
                FileTypeIndex.getFiles(LanguageFileType_JASS.INSTANCE, GlobalSearchScope.allScope(project));
        for (VirtualFile virtualFile : virtualFiles) {
            PsiFileBase_JASS simpleFile = (PsiFileBase_JASS) PsiManager.getInstance(project).findFile(virtualFile);
            if (simpleFile != null) {
                JassProperty[] properties = PsiTreeUtil.getChildrenOfType(simpleFile, JassProperty.class);
                if (properties != null) {
                    Collections.addAll(result, properties);
                }
            }
        }
        return result;
    }

    /**
     * Attempts to collect any comment elements above the Jass key/value pair.
     */
    public static @NotNull String findDocumentationComment(JassProperty property) {
        List<String> result = new LinkedList<>();
        PsiElement element = property.getPrevSibling();
        while (element instanceof PsiComment || element instanceof PsiWhiteSpace) {
            if (element instanceof PsiComment) {
                String commentText = element.getText().replaceFirst("[!# ]+", "");
                result.add(commentText);
            }
            element = element.getPrevSibling();
        }
        return StringUtil.join(Lists.reverse(result), "\n ");
    }

}
