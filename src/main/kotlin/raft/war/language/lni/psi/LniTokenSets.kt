package raft.war.language.lni.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.lni.psi.LniTypes

interface LniTokenSets {
    companion object {
        val COMMENTS: TokenSet = TokenSet.create(raft.war.language.lni.psi.LniTypes.LINE_COMMENT)
    }
}

