package raft.war.language.lni.lexer

import com.intellij.lexer.FlexAdapter
import raft.war.language.lni.parser._LniLexer

class LniFlexAdapter : FlexAdapter(raft.war.language.lni.parser._LniLexer(null))
