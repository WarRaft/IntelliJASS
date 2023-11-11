package guru.xgm.jass.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static guru.xgm.jass.psi.TypesJASS.*;

%%

%{
  public _PsiParserJASSLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class _PsiParserJASSLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

WHITE_SPACE=[ \t\n\x0B\f\r]+
SINGLE_LINE_COMMENT="//"[^\n]*
NUMBER=[0-9]+(\.[0-9]*)?
STRING=('([^'\\]|\\.)*'|\"([^\"\\]|\\.)*\")
ID=[A-Za-z_][_0-9A-Za-z]*

%%
<YYINITIAL> {
  {WHITE_SPACE}               { return WHITE_SPACE; }

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

  {WHITE_SPACE}               { return WHITE_SPACE; }
  {SINGLE_LINE_COMMENT}       { return SINGLE_LINE_COMMENT; }
  {NUMBER}                    { return NUMBER; }
  {STRING}                    { return STRING; }
  {ID}                        { return ID; }

}

[^] { return BAD_CHARACTER; }
