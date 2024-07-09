package raft.war.language.jass

import com.intellij.lexer.FlexAdapter
import raft.war.language.jass.grammar._JassLexer

class JassFlexAdapter : FlexAdapter(_JassLexer(null))
