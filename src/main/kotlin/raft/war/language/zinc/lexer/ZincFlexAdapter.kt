package raft.war.language.zinc.lexer

import com.intellij.lexer.FlexAdapter

class ZincFlexAdapter : FlexAdapter(raft.war.language.zinc.grammar._ZincLexer(null))
