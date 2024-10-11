package raft.war.language.vjass

import com.intellij.lexer.FlexAdapter
import raft.war.language.vjass.grammar._VjassLexer

class VjassFlexAdapter : FlexAdapter(_VjassLexer(null))
