package raft.war.language.zinc.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.zinc.psi.ZincTypes

interface ZincTokenSets {
    companion object {
        @JvmField
        val COMMENTS: TokenSet = TokenSet.create(raft.war.language.zinc.psi.ZincTypes.LINE_COMMENT, raft.war.language.zinc.psi.ZincTypes.BLOCK_COMMENT)
    }
}
