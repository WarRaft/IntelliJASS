package guru.xgm.language.vjass.lexer

import com.intellij.lexer.FlexAdapter
import guru.xgm.language.vjass.parser._VjassLexer

class VjassFlexAdapter : FlexAdapter(_VjassLexer(null))
