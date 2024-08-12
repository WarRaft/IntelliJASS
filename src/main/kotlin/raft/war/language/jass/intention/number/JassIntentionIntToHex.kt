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
import raft.war.language.jass.psi.JassTypes.INTVAL
import java.util.*

class JassIntentionIntToHex : IntentionAction {
    override fun startInWriteAction(): Boolean = true

    override fun getFamilyName(): String = "Convert integer to hex"

    override fun getText(): String = "Convert to hex"

    override fun isAvailable(project: Project, editor: Editor?, file: PsiFile?): Boolean = run(editor, file, false)

    override fun invoke(project: Project, editor: Editor?, file: PsiFile?) {
        run(editor, file, true)
    }

    private fun run(editor: Editor?, file: PsiFile?, invoke: Boolean): Boolean {
        if (editor == null || file == null) return false
        val element =
            IdePsiTreeUtil.skipWhitespacesBackward(file.findElementAt(editor.caretModel.offset)) ?: return false

        if (element.elementType == INTVAL) {
            val raw = RawCode.fromIntString(element.text, RawCodeLanguage.AngelScript)

            if (!invoke) return raw.valid
            if (ApplicationManager.getApplication().isWriteAccessAllowed) {
                JassElementTextFactory.replacePrimText(element, "0x${raw.hex.uppercase(Locale.getDefault())}")
            }
        }

        return false
    }
}
