package guru.xgm.jass.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.jass.psi.TypesJASS.*;

%%

%{
  public _JASSLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class _JASSLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

WHITE_SPACE=[ \t\n\x0B\f\r]+
SINGLE_LINE_COMMENT="//"[^\n]*
REAL=[0-9]+\.[0-9]*|\.[0-9]+
INTEGER=[0-9]+
HEX=(0x|\$)[0-9a-fA-F]+
STRING=\"([^\"\\]|\\.)*\"
RAWCODE='[^']*'
ID=[A-Za-z_][_0-9A-Za-z]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "constant"                  { return CONSTANT; }
  "native"                    { return NATIVE; }
  "takes"                     { return TAKES; }
  "returns"                   { return RETURNS; }
  "nothing"                   { return NOTHING; }
  "globals"                   { return GLOBALS; }
  "endglobals"                { return ENDGLOBALS; }
  "function"                  { return FUNCTION; }
  "endfunction"               { return ENDFUNCTION; }
  "array"                     { return ARRAY; }
  "and"                       { return AND; }
  "or"                        { return OR; }
  "not"                       { return NOT; }
  ","                         { return COMMA; }
  "="                         { return EQ; }
  "!="                        { return NEQ; }
  "<"                         { return LT; }
  "<="                        { return LTEQ; }
  ">"                         { return GT; }
  ">="                        { return GTEQ; }
  "+"                         { return PLUS; }
  "-"                         { return MINUS; }
  "*"                         { return MUL; }
  "/"                         { return DIV; }
  "("                         { return LP; }
  ")"                         { return RP; }
  "["                         { return LB; }
  "]"                         { return RB; }
  "type"                      { return TYPE; }
  "extends"                   { return EXTENDS; }
  "set"                       { return SET; }

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {REAL}                      { return REAL; }
  {INTEGER}                   { return INTEGER; }
  {HEX}                       { return HEX; }
  {STRING}                    { return STRING; }
  {RAWCODE}                   { return RAWCODE; }
  {ID}                        { return ID; }

}

[^] { return BAD_CHARACTER; }
