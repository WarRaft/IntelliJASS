package guru.xgm.language.angelscript.lexer

import com.intellij.lexer.FlexAdapter
import guru.xgm.language.angelscript.parser._AngelScriptLexer

class AngelScriptFlexAdapter : FlexAdapter(_AngelScriptLexer(null))
