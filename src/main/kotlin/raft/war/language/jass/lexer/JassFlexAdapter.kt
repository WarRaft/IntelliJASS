package raft.war.language.jass.lexer

import com.intellij.lexer.FlexAdapter
import raft.war.language.jass.parser._JassLexer

class JassFlexAdapter : FlexAdapter(raft.war.language.jass.parser._JassLexer(null))
