package raft.war.language.jass

import com.intellij.codeInsight.editorActions.SimpleTokenSetQuoteHandler
import com.intellij.psi.tree.TokenSet
import raft.war.language.jass.psi.JassTypes

class JassQuoteHandler : SimpleTokenSetQuoteHandler(
    TokenSet.create(
        JassTypes.STRVAL
    )
)
