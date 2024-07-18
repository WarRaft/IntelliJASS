package raft.war.language.lni.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.lni.psi.LniTypes.LINE_COMMENT

interface LniTokenSets {
    companion object {
        val COMMENTS: TokenSet = TokenSet.create(LINE_COMMENT)
    }
}

