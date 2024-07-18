package raft.war.language.zinc.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.zinc.psi.ZincTypes.BLOCK_COMMENT
import raft.war.language.zinc.psi.ZincTypes.LINE_COMMENT

interface ZincTokenSets {
    companion object {
        val COMMENTS: TokenSet = TokenSet.create(LINE_COMMENT, BLOCK_COMMENT)
    }
}
