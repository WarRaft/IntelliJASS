package guru.xgm.language.lni.lexer

import com.intellij.lexer.FlexAdapter
import guru.xgm.language.lni.parser._LniLexer

class LniFlexAdapter : FlexAdapter(_LniLexer(null))
