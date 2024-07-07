package raft.war.language.angelscript.lexer

import com.intellij.lexer.FlexAdapter

class AngelScriptFlexAdapter : FlexAdapter(
    raft.war.language.angelscript.grammar._AngelScriptLexer(
        null
    )
)
