package raft.war.language.angelscript.grammar;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static raft.war.language.angelscript.psi.AngelScriptTypes.*;

%%

%{
  public _AngelScriptLexer() {
    this((java.io.Reader)null);
  }


int peek() {
    int nextChar = yycharat(yylength());
    if (nextChar == -1) {
        return -1;
    } else {
        return (char) nextChar;
    }
}

%}

%public
%class _AngelScriptLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

%state RAWVAL_STATE
%state STRING_ONE_STATE
%state STRING_THREE_STATE

%%
<YYINITIAL> {
  [ \t\n\x0B\f\r]+            { return WHITE_SPACE; }

   "abstract"                  { return ABSTRACT; }
   "array"                     { return ARRAY; }
   "and"                       { return AND; }
   "auto"                      { return AUTO; }
   "bool"                      { return BOOL; }
   "break"                     { return BREAK; }
   "case"                      { return CASE; }
   "cast"                      { return CAST; }
   "code"                      { return CODE; }
   "const"                     { return CONST; }
   "class"                     { return CLAS; }
   "double"                    { return DOUBLE; }
   "default"                   { return DEFAULT; }
   "do"                        { return DO; }
   "else"                      { return ELSE; }
   "enum"                      { return ENUM; }
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
   "is"                        { return IS; }
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
   "xor"                       { return XOR; }
   "while"                     { return WHILE; }
   "@"                         { return AT; }
   "%"                         { return PERCENT; }
   "%="                        { return PERCENT_EQ; }
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
   "&="                        { return AMP_EQ; }
   "&"                         { return AMP; }
   "||"                        { return VBAR_VBAR; }
   "|="                        { return VBAR_EQ; }
   "|"                         { return VBAR; }
   "!is"                       { if (peek() == ' ') return NIS; }
   "!"                         { return EXCL; }
   "++"                        { return PLUS_PLUS; }
   "+"                         { return PLUS; }
   "+="                        { return PLUS_EQ; }
   "--"                        { return MINUS_MINUS; }
   "-"                         { return MINUS; }
   "-="                        { return MINUS_EQ; }
   "**="                       { return MUL_MUL_EQ; }
   "**"                        { return MUL_MUL; }
   "*"                         { return MUL; }
   "*="                        { return MUL_EQ; }
   "/"                         { return DIV; }
   "/="                        { return DIV_EQ; }
   "<="                        { return LT_EQ; }
   "<<="                       { return LT_LT_EQ; }
   "<<"                        { return LT_LT; }
   "<"                         { return LT; }
   ">="                        { return GT_EQ; }
   ">>>="                      { return GT_GT_GT_EQ; }
   ">>>"                       { return GT_GT_GT; }
   ">>="                       { return GT_GT_EQ; }
   ">>"                        { return GT_GT; }
   ">"                         { return GT; }
   "?"                         { return QUEST; }
   "^^"                        { return CAR_CAR; }
   "^="                        { return CAR_EQ; }
   "^"                         { return CAR; }
   "{"                         { return LBRACE; }
   "}"                         { return RBRACE; }
   "("                         { return LPAREN; }
   ")"                         { return RPAREN; }
   "["                         { return LBRACK; }
   "]"                         { return RBRACK; }

   \"\"\"                      { yybegin(STRING_THREE_STATE); }
   \"                          { yybegin(STRING_ONE_STATE); }
   '                           { yybegin(RAWVAL_STATE); }

  "//"[^\n]*                       { return LINE_COMMENT; }
  "/*" !([^]* "*/" [^]*) ("*/")?   { return BLOCK_COMMENT; }
  ([0-9]+\.[0-9]*|\.[0-9]+)([fd])? { return REALVAL; }
  (0x|\$)[0-9a-fA-F]+              { return HEXVAL; }
  [0-9]+                           { return INTVAL; }

  [A-Za-z_][_0-9A-Za-z]*           { return ID; }
}

<RAWVAL_STATE> {
    '         {yybegin(YYINITIAL); return RAWVAL;}
    [^]       { /*ignore*/ }
    <<EOF>>   {yybegin(YYINITIAL); return RAWVAL;}
}

<STRING_THREE_STATE> {
    \\\\      { /*ignore*/ }
    \\\"      { /*ignore*/ }
    \"\"\"    {yybegin(YYINITIAL); return STRING_THREE;}
    [^]       { /*ignore*/ }
    <<EOF>>   {yybegin(YYINITIAL); return STRING_THREE;}
}

<STRING_ONE_STATE> {
    \\\\      { /*ignore*/ }
    \\\"      { /*ignore*/ }
    \"        {yybegin(YYINITIAL); return STRING_ONE;}
    [^]       { /*ignore*/ }
    <<EOF>>   {yybegin(YYINITIAL); return STRING_ONE;}
}

[^] { return BAD_CHARACTER; }
