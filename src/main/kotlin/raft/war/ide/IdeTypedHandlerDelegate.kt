package raft.war.ide

import com.intellij.codeInsight.AutoPopupController
import com.intellij.codeInsight.editorActions.TypedHandlerDelegate
import com.intellij.openapi.editor.Editor
import com.intellij.openapi.project.Project
import com.intellij.psi.PsiFile
import raft.war.language.angelscript.AngelScriptLanguage
import java.io.File

class IdeTypedHandlerDelegate : TypedHandlerDelegate() {

    override fun checkAutoPopup(charTyped: Char, project: Project, editor: Editor, file: PsiFile): Result {
        if (file.language is AngelScriptLanguage) {
            if (charTyped == '#') {
                AutoPopupController.getInstance(project).scheduleAutoPopup(editor)
                return Result.STOP
            }

            if (charTyped == File.separatorChar || charTyped == '/') {
                AutoPopupController.getInstance(project).scheduleAutoPopup(editor)
                return Result.STOP
            }
        }
        return Result.CONTINUE
    }
}
