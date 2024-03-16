package guru.xgm.language.angelscript.parser;

import com.intellij.psi.tree.IElementType;
import com.intellij.lexer.FlexLexer;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

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
REALVAL=([0-9]+\.[0-9]*|\.[0-9]+)([fd])?
HEXVAL=(0x|\$)[0-9a-fA-F]+
INTVAL=[0-9]+
STRING_SINGLE='([^'\\]|\\.)*'
STRING_DOUBLE=\"([^\"\\]|\\.)*\"
STRING_BLOCK=\\"\\"\\"(.*?)\\"\\"\\"
ID=[A-Za-z_][_0-9A-Za-z]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

  "abstract"                  { return ABSTRACT; }
  "array"                     { return ARRAY; }
  "and"                       { return AND; }
  "auto"                      { return AUTO; }
  "bool"                      { return BOOL; }
  "break"                     { return BREAK; }
  "case"                      { return CASE; }
  "code"                      { return CODE; }
  "const"                     { return CONST; }
  "class"                     { return CLASS; }
  "double"                    { return DOUBLE; }
  "default"                   { return DEFAULT; }
  "do"                        { return DO; }
  "else"                      { return ELSE; }
  "external"                  { return EXTERNAL; }
  "explicit"                  { return EXPLICIT; }
  "false"                     { return FALSE; }
  "final"                     { return FINAL; }
  "float"                     { return FLOAT; }
  "for"                       { return FOR; }
  "funcdef"                   { return FUNCDEF; }
  "function"                  { return FUNCTION; }
  "get"                       { return GET; }
  "handle"                    { return HANDLE; }
  "if"                        { return IF; }
  "include"                   { return INCLUDE; }
  "in"                        { return IN; }
  "inout"                     { return INOUT; }
  "int"                       { return INT; }
  "int8"                      { return INT8; }
  "int16"                     { return INT16; }
  "int32"                     { return INT32; }
  "int64"                     { return INT64; }
  "namespace"                 { return NAMESPACE; }
  "not"                       { return NOT; }
  "null"                      { return NULL; }
  "nil"                       { return NIL; }
  "or"                        { return OR; }
  "override"                  { return OVERRIDE; }
  "out"                       { return OUT; }
  "private"                   { return PRIVATE; }
  "property"                  { return PROPERTY; }
  "protected"                 { return PROTECTED; }
  "return"                    { return RETURN; }
  "set"                       { return SET; }
  "shared"                    { return SHARED; }
  "static"                    { return STATIC; }
  "string"                    { return STRING; }
  "switch"                    { return SWITCH; }
  "true"                      { return TRUE; }
  "uint"                      { return UINT; }
  "uint8"                     { return UINT8; }
  "uint16"                    { return UINT16; }
  "uint32"                    { return UINT32; }
  "uint64"                    { return UINT64; }
  "void"                      { return VOID; }
  "while"                     { return WHILE; }
  "@"                         { return AT; }
  "#"                         { return HASH; }
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
  "&&"                        { return AMP_AMP; }
  "&"                         { return AMP; }
  "||"                        { return VBAR_VBAR; }
  "|"                         { return VBAR; }
  "!"                         { return EXCL; }
  "++"                        { return PLUS_PLUS; }
  "+"                         { return PLUS; }
  "+="                        { return PLUS_EQ; }
  "--"                        { return MINUS_MINUS; }
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
  "?"                         { return QUEST; }
  "{"                         { return LBRACE; }
  "}"                         { return RBRACE; }
  "("                         { return LPAREN; }
  ")"                         { return RPAREN; }
  "["                         { return LBRACK; }
  "]"                         { return RBRACK; }
  "STRVAL"                    { return STRVAL; }

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {MULTI_LINE_COMMENT}        { return MULTI_LINE_COMMENT; }
  {REALVAL}                   { return REALVAL; }
  {HEXVAL}                    { return HEXVAL; }
  {INTVAL}                    { return INTVAL; }
  {STRING_SINGLE}             { return STRING_SINGLE; }
  {STRING_DOUBLE}             { return STRING_DOUBLE; }
  {STRING_BLOCK}              { return STRING_BLOCK; }
  {ID}                        { return ID; }

}

[^] { return BAD_CHARACTER; }
