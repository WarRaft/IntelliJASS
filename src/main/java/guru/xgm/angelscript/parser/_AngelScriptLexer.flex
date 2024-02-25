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
MULTI_LINE_COMMENT="/"\*([^\n])*\*"/"
REALVAL=([0-9]+\.[0-9]*|\.[0-9]+)([fd])?
HEXVAL=(0x|\$)[0-9a-fA-F]+
INTVAL=[0-9]+
STRVAL=('([^'\\]|\\.)*'|\"([^\"\\]|\\\"|\'|\\)*\")
ID=[A-Za-z_][_0-9A-Za-z]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "array"                     { return ARRAY; }
  "auto"                      { return AUTO; }
  "bool"                      { return BOOL; }
  "break"                     { return BREAK; }
  "case"                      { return CASE; }
  "code"                      { return CODE; }
  "const"                     { return CONST; }
  "double"                    { return DOUBLE; }
  "debug"                     { return DEBUG; }
  "default"                   { return DEFAULT; }
  "do"                        { return DO; }
  "else"                      { return ELSE; }
  "external"                  { return EXTERNAL; }
  "explicit"                  { return EXPLICIT; }
  "false"                     { return FALSE; }
  "final"                     { return FINAL; }
  "float"                     { return FLOAT; }
  "for"                       { return FOR; }
  "function"                  { return FUNCTION; }
  "handle"                    { return HANDLE; }
  "if"                        { return IF; }
  "in"                        { return IN; }
  "inout"                     { return INOUT; }
  "int"                       { return INT; }
  "int8"                      { return INT8; }
  "int16"                     { return INT16; }
  "int32"                     { return INT32; }
  "int64"                     { return INT64; }
  "integer"                   { return INTEGER; }
  "library"                   { return LIBRARY; }
  "method"                    { return METHOD; }
  "nothing"                   { return NOTHING; }
  "null"                      { return NULL; }
  "optional"                  { return OPTIONAL; }
  "override"                  { return OVERRIDE; }
  "out"                       { return OUT; }
  "private"                   { return PRIVATE; }
  "property"                  { return PROPERTY; }
  "protected"                 { return PROTECTED; }
  "real"                      { return REAL; }
  "requires"                  { return REQUIRES; }
  "return"                    { return RETURN; }
  "shared"                    { return SHARED; }
  "static"                    { return STATIC; }
  "string"                    { return STRING; }
  "struct"                    { return STRUCT; }
  "switch"                    { return SWITCH; }
  "true"                      { return TRUE; }
  "thistype"                  { return THISTYPE; }
  "uint"                      { return UINT; }
  "uint8"                     { return UINT8; }
  "uint16"                    { return UINT16; }
  "uint32"                    { return UINT32; }
  "uint64"                    { return UINT64; }
  "void"                      { return VOID; }
  "while"                     { return WHILE; }
  "@"                         { return AT; }
  "~"                         { return TILDE; }
  "."                         { return DOT; }
  ","                         { return COMMA; }
  "=="                        { return EQ_EQ; }
  "="                         { return EQ; }
  "!="                        { return NEQ; }
  "::"                        { return COLON_COLON; }
  ":"                         { return COLON; }
  ";"                         { return SEMI; }
  "->"                        { return MINUS_GT; }
  "&&"                        { return AND_AND; }
  "||"                        { return OR_OR; }
  "!"                         { return NOT; }
  "++"                        { return PLUS_PLUS; }
  "+"                         { return PLUS; }
  "+="                        { return PLUS_EQ; }
  "-"                         { return MINUS; }
  "--"                        { return MINUS_MINUS; }
  "-="                        { return MINUS_EQ; }
  "*"                         { return MUL; }
  "*="                        { return MUL_EQ; }
  "/"                         { return DIV; }
  "/="                        { return DIV_EQ; }
  "<="                        { return LT_EQ; }
  "<"                         { return LT; }
  ">="                        { return GT_EQ; }
  ">"                         { return GT; }
  "?"                         { return QUEST; }
  "{"                         { return LBRACE; }
  "}"                         { return RBRACE; }
  "("                         { return LPAREN; }
  ")"                         { return RPAREN; }
  "["                         { return LBRACK; }
  "]"                         { return RBRACK; }
  "AND"                       { return AND; }

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {MULTI_LINE_COMMENT}        { return MULTI_LINE_COMMENT; }
  {REALVAL}                   { return REALVAL; }
  {HEXVAL}                    { return HEXVAL; }
  {INTVAL}                    { return INTVAL; }
  {STRVAL}                    { return STRVAL; }
  {ID}                        { return ID; }

}

[^] { return BAD_CHARACTER; }
