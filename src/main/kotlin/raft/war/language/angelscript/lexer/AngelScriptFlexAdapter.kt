package raft.war.language.angelscript.lexer

import com.intellij.lexer.FlexAdapter
import raft.war.language.angelscript.parser._AngelScriptLexer

class AngelScriptFlexAdapter : FlexAdapter(
    raft.war.language.angelscript.parser._AngelScriptLexer(
        null
    )
)
