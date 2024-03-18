package guru.xgm.language.lni.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.language.lni.psi.LniTypes.*;

%%

%{
  public _LniLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class _LniLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

WHITE_SPACE=[ \t\n\x0B\f\r]+
SINGLE_LINE_COMMENT=--[^\n]*
REALVAL=[0-9]+\.[0-9]*|\.[0-9]+
HEXVAL=(0x|\$)[0-9a-fA-F]+
INTVAL=[0-9]+
STRVAL=\"([^\"\\]|\\.)*\"
STRVAL_MULT=\[=\[[^(\]=)]*]=]
HEADVAL=\[[^\]]*]
ID=[A-Za-z_][_0-9A-Za-z]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  ","                         { return COMMA; }
  "="                         { return EQ; }
  "{"                         { return LBRACE; }
  "}"                         { return RBRACE; }
  "("                         { return LPAREN; }
  ")"                         { return RPAREN; }
  "["                         { return LBRACK; }
  "]"                         { return RBRACK; }
  "-"                         { return MINUS; }

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {REALVAL}                   { return REALVAL; }
  {HEXVAL}                    { return HEXVAL; }
  {INTVAL}                    { return INTVAL; }
  {STRVAL}                    { return STRVAL; }
  {STRVAL_MULT}               { return STRVAL_MULT; }
  {HEADVAL}                   { return HEADVAL; }
  {ID}                        { return ID; }

}

[^] { return BAD_CHARACTER; }
