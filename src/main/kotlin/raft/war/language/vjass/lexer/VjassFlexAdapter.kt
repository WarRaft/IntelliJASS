package raft.war.language.vjass.lexer

import com.intellij.lexer.FlexAdapter

class VjassFlexAdapter : FlexAdapter(raft.war.language.vjass.grammar._VjassLexer(null))
