package raft.war.language.wts.psi

import com.intellij.psi.tree.TokenSet

interface WtsTokenSets {
    companion object {
        val COMMENTS: TokenSet = TokenSet.create(WtsTypes.LINE_COMMENT)
    }
}
