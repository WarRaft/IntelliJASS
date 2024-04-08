package guru.xgm.intellij.codeInsight;

import com.intellij.codeInsight.AutoPopupController;
import com.intellij.codeInsight.editorActions.TypedHandlerDelegate;
import com.intellij.openapi.editor.Editor;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiFile;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;

import java.io.File;

public class IntellijTypedHandlerDelegate extends TypedHandlerDelegate {
    @NotNull
    public Result checkAutoPopup(char charTyped, @NotNull Project project, @NotNull Editor editor, @NotNull PsiFile file) {
        if (file.getLanguage() instanceof AngelScriptLanguage) {
            if (charTyped == '#') {
                AutoPopupController.getInstance(project).scheduleAutoPopup(editor);
                return Result.STOP;
            }


            if (charTyped == File.separatorChar || charTyped == '/') {
                AutoPopupController.getInstance(project).scheduleAutoPopup(editor);
                return Result.STOP;
            }
        }
        return Result.CONTINUE;
    }
}
