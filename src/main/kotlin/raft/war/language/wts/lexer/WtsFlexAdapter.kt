package raft.war.language.wts.lexer

import com.intellij.lexer.FlexAdapter
import raft.war.language.wts.parser._WtsLexer

class WtsFlexAdapter : FlexAdapter(raft.war.language.wts.parser._WtsLexer(null))
