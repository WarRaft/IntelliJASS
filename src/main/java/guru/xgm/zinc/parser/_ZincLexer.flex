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
BLOCK_COMMENT="/*" !([^]* "*/" [^]*) ("*/")?
REALVAL=[0-9]+\.[0-9]*|\.[0-9]+
HEXVAL=(0x|\$)[0-9a-fA-F]+
INTVAL=[0-9]+
RAWVAL='[^']*'
STRVAL=\"([^\"\\]|\\.)*\"
ID=[A-Za-z_][_0-9A-Za-z]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "code"                      { return CODE; }
  "constant"                  { return CONSTANT; }
  "for"                       { return FOR; }
  "function"                  { return FUNCTION; }
  "library"                   { return LIBRARY; }
  "boolean"                   { return BOOLEAN; }
  "handle"                    { return HANDLE; }
  "if"                        { return IF; }
  "else"                      { return ELSE; }
  "integer"                   { return INTEGER; }
  "string"                    { return STRING; }
  "real"                      { return REAL; }
  "private"                   { return PRIVATE; }
  "public"                    { return PUBLIC; }
  "nothing"                   { return NOTHING; }
  "return"                    { return RETURN; }
  ","                         { return COMMA; }
  "=="                        { return EQ_EQ; }
  "="                         { return EQ; }
  "!="                        { return NEQ; }
  ";"                         { return SEMI; }
  "->"                        { return MINUS_GT; }
  "&&"                        { return AND_AND; }
  "||"                        { return OR_OR; }
  "+"                         { return PLUS; }
  "-"                         { return MINUS; }
  "*"                         { return MUL; }
  "/"                         { return DIV; }
  "<="                        { return LT_EQ; }
  "<"                         { return LT; }
  ">="                        { return GT_EQ; }
  ">"                         { return GT; }
  "{"                         { return LBRACE; }
  "}"                         { return RBRACE; }
  "("                         { return LPAREN; }
  ")"                         { return RPAREN; }
  "["                         { return LBRACK; }
  "]"                         { return RBRACK; }
  "KEY"                       { return KEY; }
  "MINUSGT"                   { return MINUSGT; }
  "DEBUG"                     { return DEBUG; }
  "NOT"                       { return NOT; }
  "FALSE"                     { return FALSE; }
  "NULL"                      { return NULL; }
  "TRUE"                      { return TRUE; }

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {BLOCK_COMMENT}             { return BLOCK_COMMENT; }
  {REALVAL}                   { return REALVAL; }
  {HEXVAL}                    { return HEXVAL; }
  {INTVAL}                    { return INTVAL; }
  {RAWVAL}                    { return RAWVAL; }
  {STRVAL}                    { return STRVAL; }
  {ID}                        { return ID; }

}

[^] { return BAD_CHARACTER; }
