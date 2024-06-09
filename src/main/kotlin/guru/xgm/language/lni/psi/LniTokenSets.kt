package guru.xgm.language.lni.psi

import com.intellij.psi.tree.TokenSet

interface LniTokenSets {
    companion object {
        val COMMENTS: TokenSet = TokenSet.create(LniTypes.LINE_COMMENT)
    }
}

