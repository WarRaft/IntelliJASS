package guru.xgm.jass.lexer;

import static guru.xgm.jass.psi.TypesJASS.*;

import com.intellij.lexer.FlexLexer;

import com.intellij.psi.tree.IElementType;
import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;

%%

%public
%class LexerJASS
%implements FlexLexer
%function advance
%type IElementType
%unicode

WHITE_SPACE=[\ \n\t\f]
SINGLE_LINE_COMMENT="/""/"[^\n]*
IDENTIFIER=[A-Za-z_][_0-9A-Za-z]*
DIGIT=[0-9]
HEX_DIGIT=[0-9a-fA-F]
HEX = (0x|\$) {HEX_DIGIT}*
INTEGER={DIGIT}+
DOT = "."
REAL = ({DIGIT}+ ({DOT} {DIGIT}+)?) | ({DOT} {DIGIT}+)
RAWCODE= "'"[^']*"'"
STRING=\"([^\"\\]|\\.)*\"

%state WAITING_VALUE

%%

<YYINITIAL> {
{WHITE_SPACE} { return WHITE_SPACE; }
//    call = 'call',
"constant" { return KEYWORD_CONSTANT; }
//    debug = 'debug',
//    else = 'else',
//    elseif = 'elseif',
//    endfunction = 'endfunction',
"endfunction" { return KEYWORD_ENDFUNCTION; }
"endglobals" { return KEYWORD_ENDGLOBALS; }
//    endif = 'endif',
//    endloop = 'endloop',
//    exitwhen = 'exitwhen',
"extends" { return KEYWORD_EXTENDS; }
"function" { return KEYWORD_FUNCTION; }
"globals" { return KEYWORD_GLOBALS; }
//    if = 'if',
//    local = 'local',
//    loop = 'loop',
"native" { return KEYWORD_NATIVE; }
"nothing" { return NOTHING; }
//    null = 'null',
//    nothing = 'nothing',
"returns" { return KEYWORD_RETURNS; }
//    return = 'return',
//    set = 'set',
"takes" { return KEYWORD_TAKES; }
//    then = 'then',
"type" { return KEYWORD_TYPE; }

"array" { return ARRAY; }
"and" { return AND; }
"or" { return OR; }
"true" { return TRUE; }
"false" { return FALSE; }
"not" { return NOT;}
"set" { return SET;}
{DOT} { return DOT;}
"," { return COMMA;}
"=" { return ASSIGN;}
"+" { return PLUS;}
"-" { return MINUS;}
"*" { return MUL;}
"/" { return DIV;}
"(" { return LPAREN;}
")" { return RPAREN;}

"<" { return LT;}
"<=" { return LT_EQ;}
">" { return RT;}
">=" { return RT_EQ;}
"==" { return EQ_EQ;}
"!=" { return NEQ;}

{INTEGER} { return INTEGER; }
{REAL} {return REAL;}
{HEX} {return HEX;}
{RAWCODE} {return RAWCODE;}
{STRING} {return STRING;}

{IDENTIFIER} { return IDENTIFIER; }

{SINGLE_LINE_COMMENT} { return SINGLE_LINE_COMMENT;}
}

[^] { return BAD_CHARACTER; }


