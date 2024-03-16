package guru.xgm.language.jass.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.language.jass.psi.JassTypes.*;

%%

%{
  public _JassLexer() {
    this((java.io.Reader)null);
  }
%}
// https://www.jflex.de/manual.html

%public
%class _JassLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

WHITE_SPACE=[ \t\n\x0B\f\r]+
SINGLE_LINE_COMMENT="//"[^\n]*
REALVAL=[0-9]+\.[0-9]*|\.[0-9]+
HEXVAL=(0x|\$)[0-9a-zA-Z]+
INTVAL=[0-9]+
STRVAL=\"([^\"\\]|\\.)*\"
ID=[A-Za-z_][_0-9A-Za-z]*

%state RAWVAL_STATE

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "and"                       { return AND; }
  "array"                     { return ARRAY; }
  "boolean"                   { return BOOLEAN; }
  "code"                      { return CODE; }
  "call"                      { return CALL; }
  "constant"                  { return CONSTANT; }
  "debug"                     { return DEBUG; }
  "else"                      { return ELSE; }
  "elseif"                    { return ELSEIF; }
  "endfunction"               { return ENDFUNCTION; }
  "endif"                     { return ENDIF; }
  "endloop"                   { return ENDLOOP; }
  "endglobals"                { return ENDGLOBALS; }
  "extends"                   { return EXTENDS; }
  "exitwhen"                  { return EXITWHEN; }
  "false"                     { return FALSE; }
  "function"                  { return FUNCTION; }
  "globals"                   { return GLOBALS; }
  "handle"                    { return HANDLE; }
  "if"                        { return IF; }
  "integer"                   { return INTEGER; }
  "local"                     { return LOCAL; }
  "loop"                      { return LOOP; }
  "native"                    { return NATIVE; }
  "not"                       { return NOT; }
  "nothing"                   { return NOTHING; }
  "null"                      { return NULL; }
  "or"                        { return OR; }
  "real"                      { return REAL; }
  "returns"                   { return RETURNS; }
  "return"                    { return RETURN; }
  "set"                       { return SET; }
  "string"                    { return STRING; }
  "takes"                     { return TAKES; }
  "then"                      { return THEN; }
  "true"                      { return TRUE; }
  "type"                      { return TYPE; }
  ","                         { return COMMA; }
  "=="                        { return EQ_EQ; }
  "="                         { return EQ; }
  "!="                        { return NEQ; }
  "<="                        { return LT_EQ; }
  "<"                         { return LT; }
  ">="                        { return GT_EQ; }
  ">"                         { return GT; }
  "+"                         { return PLUS; }
  "-"                         { return MINUS; }
  "*"                         { return MUL; }
  "/"                         { return DIV; }
  "("                         { return LPAREN; }
  ")"                         { return RPAREN; }
  "["                         { return LBRACK; }
  "]"                         { return RBRACK; }
  "'"                         {yybegin(RAWVAL_STATE);}

  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {REALVAL}                   { return REALVAL; }
  {HEXVAL}                    { return HEXVAL; }
  {INTVAL}                    { return INTVAL; }
  {STRVAL}                    { return STRVAL; }
  {ID}                        { return ID; }

}

 <RAWVAL_STATE> {
    "'"       {yybegin(YYINITIAL); return RAWVAL;}
    [^]       { /*ignore*/ }
    <<EOF>>   {yybegin(YYINITIAL); return RAWVAL;}
}


[^] { return BAD_CHARACTER; }
