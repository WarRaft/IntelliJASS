package guru.xgm.language.wts.psi

import com.intellij.psi.tree.TokenSet

interface WtsTokenSets {
    companion object {
        @kotlin.jvm.JvmField
        val COMMENTS: TokenSet = TokenSet.create(WtsTypes.LINE_COMMENT)
    }
}
