package guru.xgm.angelscript.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.angelscript.psi.AngelScriptTypes.*;

%%

%{
  public _AngelScriptLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class _AngelScriptLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

WHITE_SPACE=[ \t\n\x0B\f\r]+
SINGLE_LINE_COMMENT="//"[^\n]*
MULTI_LINE_COMMENT="/*" !([^]* "*/" [^]*) ("*/")?
REALVAL=[0-9]+\.[0-9]*|\.[0-9]+
HEXVAL=(0x|\$)[0-9a-fA-F]+
INTVAL=[0-9]+
RAWVAL='[^']*'
STRVAL=\"([^\"\\]|\\.)*\"
ID=[A-Za-z_][_0-9A-Za-z]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "boolean"                   { return BOOLEAN; }
  "break"                     { return BREAK; }
  "code"                      { return CODE; }
  "constant"                  { return CONSTANT; }
  "debug"                     { return DEBUG; }
  "do"                        { return DO; }
  "else"                      { return ELSE; }
  "false"                     { return FALSE; }
  "for"                       { return FOR; }
  "function"                  { return FUNCTION; }
  "handle"                    { return HANDLE; }
  "if"                        { return IF; }
  "integer"                   { return INTEGER; }
  "key"                       { return KEY; }
  "library"                   { return LIBRARY; }
  "method"                    { return METHOD; }
  "nothing"                   { return NOTHING; }
  "null"                      { return NULL; }
  "optional"                  { return OPTIONAL; }
  "private"                   { return PRIVATE; }
  "public"                    { return PUBLIC; }
  "real"                      { return REAL; }
  "requires"                  { return REQUIRES; }
  "return"                    { return RETURN; }
  "static"                    { return STATIC; }
  "string"                    { return STRING; }
  "struct"                    { return STRUCT; }
  "true"                      { return TRUE; }
  "thistype"                  { return THISTYPE; }
  "while"                     { return WHILE; }
  "."                         { return DOT; }
  ","                         { return COMMA; }
  "=="                        { return EQ_EQ; }
  "="                         { return EQ; }
  "!="                        { return NEQ; }
  ";"                         { return SEMI; }
  "->"                        { return MINUS_GT; }
  "&&"                        { return AND_AND; }
  "||"                        { return OR_OR; }
  "!"                         { return NOT; }
  "+"                         { return PLUS; }
  "+="                        { return PLUS_EQ; }
  "-"                         { return MINUS; }
  "-="                        { return MINUS_EQ; }
  "*"                         { return MUL; }
  "*="                        { return MUL_EQ; }
  "/"                         { return DIV; }
  "/="                        { return DIV_EQ; }
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

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {MULTI_LINE_COMMENT}        { return MULTI_LINE_COMMENT; }
  {REALVAL}                   { return REALVAL; }
  {HEXVAL}                    { return HEXVAL; }
  {INTVAL}                    { return INTVAL; }
  {RAWVAL}                    { return RAWVAL; }
  {STRVAL}                    { return STRVAL; }
  {ID}                        { return ID; }

}

[^] { return BAD_CHARACTER; }
