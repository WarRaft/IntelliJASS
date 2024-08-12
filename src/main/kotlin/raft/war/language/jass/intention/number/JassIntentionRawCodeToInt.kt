package raft.war.language.jass.intention.number

import com.intellij.codeInsight.intention.IntentionAction
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.editor.Editor
import com.intellij.openapi.project.Project
import com.intellij.psi.PsiFile
import com.intellij.psi.util.elementType
import raft.war.ide.utils.IdePsiTreeUtil
import raft.war.ide.utils.RawCode
import raft.war.ide.utils.RawCodeLanguage
import raft.war.language.jass.psi.JassElementTextFactory
import raft.war.language.jass.psi.JassTypes.RAWVAL

class JassIntentionRawCodeToInt : IntentionAction {
    override fun startInWriteAction(): Boolean = true

    override fun getFamilyName(): String = "Convert rawcode to integer"

    override fun getText(): String = "Convert to integer"

    override fun isAvailable(project: Project, editor: Editor?, file: PsiFile?): Boolean = run(editor, file, false)

    override fun invoke(project: Project, editor: Editor?, file: PsiFile?) {
        run(editor, file, true)
    }

    private fun run(editor: Editor?, file: PsiFile?, invoke: Boolean): Boolean {
        if (editor == null || file == null) return false
        val element =
            IdePsiTreeUtil.skipWhitespacesBackward(file.findElementAt(editor.caretModel.offset)) ?: return false

        if (element.elementType == RAWVAL) {
            val raw = RawCode.fromString(element.text, RawCodeLanguage.AngelScript, true)

            if (!invoke) return raw.valid
            if (ApplicationManager.getApplication().isWriteAccessAllowed) {
                JassElementTextFactory.replacePrimText(element, "${raw.ulong}")
            }
        }

        return false
    }
}
