package raft.war.language.jass.intention.number

import com.intellij.codeInsight.intention.IntentionAction
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.editor.Editor
import com.intellij.openapi.project.Project
import com.intellij.psi.PsiFile
import com.intellij.psi.tree.IElementType
import com.intellij.psi.util.elementType
import raft.war.ide.utils.IdePsiTreeUtil
import raft.war.ide.utils.RawCode
import raft.war.ide.utils.RawCodeLanguage
import raft.war.language.jass.psi.JassElementTextFactory
import raft.war.language.jass.psi.JassTypes.*
import java.util.*

abstract class JassIntentionNumberConverter : IntentionAction {
    override fun startInWriteAction(): Boolean = true
    override fun isAvailable(project: Project, editor: Editor?, file: PsiFile?): Boolean = run(editor, file, false)
    override fun invoke(project: Project, editor: Editor?, file: PsiFile?) {
        run(editor, file, true)
    }

    protected abstract fun from(): IElementType
    protected abstract fun to(): IElementType

    protected open fun run(editor: Editor?, file: PsiFile?, invoke: Boolean): Boolean {
        if (editor == null || file == null) return false
        val element =
            IdePsiTreeUtil.skipWhitespacesBackward(file.findElementAt(editor.caretModel.offset)) ?: return false

        if (element.elementType == from()) {
            val raw = when (from()) {
                INTVAL -> RawCode.fromIntString(element.text, RawCodeLanguage.AngelScript)
                HEXVAL -> RawCode.fromHexStringOrNull(element.text, RawCodeLanguage.AngelScript)
                RAWVAL -> RawCode.fromString(element.text, RawCodeLanguage.AngelScript, true)
                else -> return false
            }

            if (raw == null || (!raw.safe && to() == RAWVAL)) return false

            if (!invoke) return raw.valid
            if (ApplicationManager.getApplication().isWriteAccessAllowed) {
                val s = when (to()) {
                    INTVAL -> "${raw.ulong}"
                    HEXVAL -> "0x${raw.hex.uppercase(Locale.getDefault())}"
                    RAWVAL -> raw.quoted
                    else -> return false
                }

                JassElementTextFactory.replacePrimText(element, s)
            }
        }

        return false
    }
}
