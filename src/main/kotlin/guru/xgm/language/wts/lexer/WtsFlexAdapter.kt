package guru.xgm.language.wts.lexer

import com.intellij.lexer.FlexAdapter
import guru.xgm.language.wts.parser._WtsLexer

class WtsFlexAdapter : FlexAdapter(_WtsLexer(null))
