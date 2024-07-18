package raft.war.language.vjass.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.vjass.psi.VjassTypes.BLOCK_COMMENT
import raft.war.language.vjass.psi.VjassTypes.LINE_COMMENT

interface VjassTokenSets {
    companion object {
        @JvmField
        val COMMENTS: TokenSet = TokenSet.create(LINE_COMMENT, BLOCK_COMMENT)
    }
}
