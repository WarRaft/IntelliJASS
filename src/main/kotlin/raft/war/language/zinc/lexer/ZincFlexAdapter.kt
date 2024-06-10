package raft.war.language.zinc.lexer

import com.intellij.lexer.FlexAdapter
import raft.war.language.zinc.parser._ZincLexer

class ZincFlexAdapter : FlexAdapter(raft.war.language.zinc.parser._ZincLexer(null))
