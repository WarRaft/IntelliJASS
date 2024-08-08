package raft.war.language.jass.completion

import com.intellij.codeInsight.editorActions.enter.EnterHandlerDelegate
import com.intellij.openapi.actionSystem.DataContext
import com.intellij.openapi.editor.Editor
import com.intellij.openapi.editor.actionSystem.EditorActionHandler
import com.intellij.openapi.util.Ref
import com.intellij.psi.PsiFile
import com.intellij.psi.PsiWhiteSpace
import com.intellij.psi.util.elementType
import raft.war.language.jass.JassLanguage
import raft.war.language.jass.psi.JassGlob
import raft.war.language.jass.psi.JassTypes.GLOBALS

class JassEnterHandlerDelegate : EnterHandlerDelegate {
    override fun preprocessEnter(
        file: PsiFile,
        editor: Editor,
        caretOffset: Ref<Int>,
        caretAdvance: Ref<Int>,
        dataContext: DataContext,
        originalHandler: EditorActionHandler?
    ): EnterHandlerDelegate.Result {
        if (file.language !is JassLanguage) return EnterHandlerDelegate.Result.Continue

        val caret = caretOffset.get()

        var element = file.findElementAt(caret - 1)
        while (element is PsiWhiteSpace) {
            element = element.prevSibling
        }

        val parent = element?.parent

        //print("pre $element | ${element?.parent} \n")

        if (element.elementType == GLOBALS && parent is JassGlob) {
            if (parent.endglobals == null) {
                editor.document.insertString(caret, "\nendglobals")
            }
        }

        //
        //editor.caretModel.moveToOffset(caretOffset + 4)


        return EnterHandlerDelegate.Result.Continue
    }

    override fun postProcessEnter(
        file: PsiFile,
        editor: Editor,
        dataContext: DataContext
    ): EnterHandlerDelegate.Result {
        if (file.language !is JassLanguage) return EnterHandlerDelegate.Result.Continue
        return EnterHandlerDelegate.Result.Continue
    }
}
