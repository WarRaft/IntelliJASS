package guru.xgm.zinc.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.zinc.psi.ZincTypes.*;

%%

%{
  public _ZincLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class _ZincLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

WHITE_SPACE=[ \t\n\x0B\f\r]+
SINGLE_LINE_COMMENT="//"[^\n]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "library"                   { return LIBRARY; }

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }

}

[^] { return BAD_CHARACTER; }
