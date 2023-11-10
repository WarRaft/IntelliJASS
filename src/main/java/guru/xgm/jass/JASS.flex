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
"and" { return AND; }
"array" { return ARRAY; }
//    call = 'call',
"constant" { return KEYWORD_CONSTANT; }
//    debug = 'debug',
//    else = 'else',
//    elseif = 'elseif',
//    endfunction = 'endfunction',
"endglobals" { return KEYWORD_ENDGLOBALS; }
//    endif = 'endif',
//    endloop = 'endloop',
//    exitwhen = 'exitwhen',
"extends" { return KEYWORD_EXTENDS; }
//    false = 'false',
//    function = 'function',
"globals" { return KEYWORD_GLOBALS; }
//    if = 'if',
//    local = 'local',
//    loop = 'loop',
"native" { return KEYWORD_NATIVE; }
"not" { return NOT; }
//    null = 'null',
//    nothing = 'nothing',
"nothing" { return KEYWORD_NOTHING; }
"or" { return OR; }
"returns" { return KEYWORD_RETURNS; }
//    return = 'return',
//    set = 'set',
"takes" { return KEYWORD_TAKES; }
//    then = 'then',
"type" { return KEYWORD_TYPE; }
//    true = 'true',


"not" { return NOT;}
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

{IDENTIFIER} { return IDENTIFIER; }
{INTEGER} { return INTEGER; }
{REAL} {return REAL;}
{HEX} {return HEX;}
{RAWCODE} {return RAWCODE;}
{STRING} {return STRING;}

{SINGLE_LINE_COMMENT} { return SINGLE_LINE_COMMENT;}
}

[^] { return BAD_CHARACTER; }


