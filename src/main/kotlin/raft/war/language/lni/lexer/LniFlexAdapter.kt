package raft.war.language.lni.lexer

import com.intellij.lexer.FlexAdapter

class LniFlexAdapter : FlexAdapter(raft.war.language.lni.grammar._LniLexer(null))
