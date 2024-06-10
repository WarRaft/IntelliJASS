package guru.xgm.language.vjass.psi

import com.intellij.psi.tree.TokenSet

interface VjassTokenSets {
    companion object {
        @JvmField
        val COMMENTS: TokenSet = TokenSet.create(VjassTypes.LINE_COMMENT, VjassTypes.BLOCK_COMMENT)
    }
}
