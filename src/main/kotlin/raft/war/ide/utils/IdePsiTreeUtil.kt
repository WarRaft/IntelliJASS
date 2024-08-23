package raft.war.ide.utils

import com.intellij.psi.PsiElement
import com.intellij.psi.PsiWhiteSpace

class IdePsiTreeUtil {

    companion object {

        private fun skipWhitespaces(element: PsiElement?, forward: Boolean): PsiElement? {
            if (element == null) return null
            var e = element
            while (e is PsiWhiteSpace) {
                e = if (forward) element.nextSibling else element.prevSibling
            }
            return e
        }

        fun skipWhitespacesForward(element: PsiElement?): PsiElement? = skipWhitespaces(element, true)
        fun skipWhitespacesBackward(element: PsiElement?): PsiElement? = skipWhitespaces(element, false)
    }
}
