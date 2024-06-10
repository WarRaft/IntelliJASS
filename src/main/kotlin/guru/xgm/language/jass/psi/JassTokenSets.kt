package guru.xgm.language.jass.psi

import com.intellij.psi.tree.TokenSet

interface JassTokenSets {
    companion object {
        @JvmField
        val COMMENTS: TokenSet = TokenSet.create(JassTypes.LINE_COMMENT)
    }
}
