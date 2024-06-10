package guru.xgm.language.wts.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.language.wts.psi.WtsTypes.*;

%%

%{
  public _WtsLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class _WtsLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

WHITE_SPACE=[ \t\n\x0B\f\r]+
LINE_COMMENT="//"[^\n]*
ID=[0-9]+
VALUE=\{[^}]*}

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "STRING"                    { return STRING; }

  {LINE_COMMENT}       { return LINE_COMMENT; }
  {ID}                        { return ID; }
  {VALUE}                     { return VALUE; }
}

[^] { return BAD_CHARACTER; }
