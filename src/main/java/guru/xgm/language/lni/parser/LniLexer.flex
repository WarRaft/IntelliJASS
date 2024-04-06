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

WHITE_SPACE=[ \t\n\x0B\f\r]+
LINE_COMMENT=--[^\n]*
REALVAL=[0-9]+\.[0-9]*|\.[0-9]+
HEXVAL=(0x|\$)[0-9a-fA-F]+
INTVAL=[0-9]+
STRVAL=\"([^\"\\]|\\.)*\"
ID=[A-Za-z_][_0-9A-Za-z]*

%state STRVAL_MULTI_STATE
%state HEADVAL_STATE

%%
<YYINITIAL> {
    {WHITE_SPACE}             { return WHITE_SPACE; }
    "[=["                     { yybegin(STRVAL_MULTI_STATE);}
    "["                       {yybegin(HEADVAL_STATE);}

  ","                         { return COMMA; }
  "="                         { return EQ; }
  "{"                         { return LBRACE; }
  "}"                         { return RBRACE; }
  "-"                         { return MINUS; }

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {LINE_COMMENT}       { return LINE_COMMENT; }
  {REALVAL}                   { return REALVAL; }
  {HEXVAL}                    { return HEXVAL; }
  {INTVAL}                    { return INTVAL; }
  {STRVAL}                    { return STRVAL; }
  {ID}                        { return ID; }
}

<STRVAL_MULTI_STATE> {
    "]=]"     { yybegin(YYINITIAL);return STRVAL_MULT; }
    [^]       { /*ignore*/ }
    <<EOF>>   { yybegin(YYINITIAL); return STRVAL_MULT; }
}

<HEADVAL_STATE> {
    "]"       { yybegin(YYINITIAL);return HEADVAL; }
    [^]       { /*ignore*/ }
    <<EOF>>   { yybegin(YYINITIAL); return HEADVAL; }
}

[^] { return BAD_CHARACTER; }
