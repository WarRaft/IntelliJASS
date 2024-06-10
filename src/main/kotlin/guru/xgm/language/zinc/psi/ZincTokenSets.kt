package guru.xgm.language.zinc.psi

import com.intellij.psi.tree.TokenSet

interface ZincTokenSets {
    companion object {
        @JvmField
        val COMMENTS: TokenSet = TokenSet.create(ZincTypes.LINE_COMMENT, ZincTypes.BLOCK_COMMENT)
    }
}
