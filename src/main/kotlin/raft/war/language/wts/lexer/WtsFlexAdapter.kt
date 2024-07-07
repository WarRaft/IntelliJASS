package raft.war.language.wts.lexer

import com.intellij.lexer.FlexAdapter

class WtsFlexAdapter : FlexAdapter(raft.war.language.wts.grammar._WtsLexer(null))
