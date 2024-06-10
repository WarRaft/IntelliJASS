package guru.xgm.language.jass.lexer

import com.intellij.lexer.FlexAdapter
import guru.xgm.language.jass.parser._JassLexer

class JassFlexAdapter : FlexAdapter(_JassLexer(null))
