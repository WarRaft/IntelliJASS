package raft.war.ide.utils

import com.intellij.psi.PsiElement
import com.intellij.psi.PsiWhiteSpace

class IdePsiTreeUtil {

    companion object {
        fun skipWhitespacesBackward(element: PsiElement?): PsiElement? {
            if (element == null) return null
            var e = element
            while (e is PsiWhiteSpace) {
                e = element.prevSibling
            }
            return e
        }
    }
}
