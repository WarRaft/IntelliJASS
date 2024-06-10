package guru.xgm.language.zinc.lexer

import com.intellij.lexer.FlexAdapter
import guru.xgm.language.zinc.parser._ZincLexer

class ZincFlexAdapter : FlexAdapter(_ZincLexer(null))
