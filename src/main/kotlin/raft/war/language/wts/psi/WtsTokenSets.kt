package raft.war.language.wts.psi

import com.intellij.psi.tree.TokenSet
import raft.war.language.wts.psi.WtsTypes

interface WtsTokenSets {
    companion object {
        @kotlin.jvm.JvmField
        val COMMENTS: TokenSet = TokenSet.create(raft.war.language.wts.psi.WtsTypes.LINE_COMMENT)
    }
}
