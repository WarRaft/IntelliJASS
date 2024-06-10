package raft.war.language.angelscript.codeInsight.completion

import com.intellij.codeInsight.completion.CompletionConfidence
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiFile
import com.intellij.util.ThreeState

class AngelScriptCompletionConfidence : CompletionConfidence() {
    override fun shouldSkipAutopopup(contextElement: PsiElement, psiFile: PsiFile, offset: Int): ThreeState =
        ThreeState.NO
}
