package guru.xgm.jgas.util;

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
import guru.xgm.jgas.openapi.fileTypes.LanguageFileType_JGAS;
import guru.xgm.jgas.extapi.psi.PsiFileBase_JGAS;
import guru.xgm.jgas.psi.JGAS_Property;
import org.jetbrains.annotations.NotNull;

import java.util.*;

public class Util_JGAS {

    /**
     * Searches the entire project for Jass language files with instances of the Jass property with the given key.
     *
     * @param project current project
     * @param key     to check
     * @return matching properties
     */
    public static List<JGAS_Property> findProperties(Project project, String key) {
        List<JGAS_Property> result = new ArrayList<>();
        Collection<VirtualFile> virtualFiles =
                FileTypeIndex.getFiles(LanguageFileType_JGAS.INSTANCE, GlobalSearchScope.allScope(project));
        for (VirtualFile virtualFile : virtualFiles) {
            PsiFileBase_JGAS simpleFile = (PsiFileBase_JGAS) PsiManager.getInstance(project).findFile(virtualFile);
            if (simpleFile != null) {
                JGAS_Property[] properties = PsiTreeUtil.getChildrenOfType(simpleFile, JGAS_Property.class);
                if (properties != null) {
                    for (JGAS_Property property : properties) {
                        if (key.equals(property.getKey())) {
                            result.add(property);
                        }
                    }
                }
            }
        }
        return result;
    }

    public static List<JGAS_Property> findProperties(Project project) {
        List<JGAS_Property> result = new ArrayList<>();
        Collection<VirtualFile> virtualFiles =
                FileTypeIndex.getFiles(LanguageFileType_JGAS.INSTANCE, GlobalSearchScope.allScope(project));
        for (VirtualFile virtualFile : virtualFiles) {
            PsiFileBase_JGAS simpleFile = (PsiFileBase_JGAS) PsiManager.getInstance(project).findFile(virtualFile);
            if (simpleFile != null) {
                JGAS_Property[] properties = PsiTreeUtil.getChildrenOfType(simpleFile, JGAS_Property.class);
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
    public static @NotNull String findDocumentationComment(JGAS_Property property) {
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
