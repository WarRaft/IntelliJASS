package raft.war.language.vjass.lexer

import com.intellij.lexer.FlexAdapter
import raft.war.language.vjass.parser._VjassLexer

class VjassFlexAdapter : FlexAdapter(raft.war.language.vjass.parser._VjassLexer(null))
