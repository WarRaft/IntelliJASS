package raft.war.language.vjass.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.vjass.psi.VjassTypes

interface VjassTokenSets {
    companion object {
        @JvmField
        val COMMENTS: TokenSet = TokenSet.create(raft.war.language.vjass.psi.VjassTypes.LINE_COMMENT, raft.war.language.vjass.psi.VjassTypes.BLOCK_COMMENT)
    }
}
