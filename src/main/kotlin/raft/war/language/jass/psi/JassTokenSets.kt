package raft.war.language.jass.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.jass.psi.JassTypes

interface JassTokenSets {
    companion object {
        @JvmField
        val COMMENTS: TokenSet = TokenSet.create(raft.war.language.jass.psi.JassTypes.LINE_COMMENT)
    }
}
