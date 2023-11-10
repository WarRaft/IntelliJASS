package guru.xgm.jass.lexer;

import guru.xgm.jass.psi.TypesJASS;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;

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
INTEGER=[0-9]+

%state WAITING_VALUE

%%

<YYINITIAL> {
{WHITE_SPACE} { return TokenType.WHITE_SPACE; }
//"and" { return TypesJASS.K_AND; }
//    array = 'array',
//    call = 'call',
"constant" { return TypesJASS.KEYWORD_CONSTANT; }
//    debug = 'debug',
//    else = 'else',
//    elseif = 'elseif',
//    endfunction = 'endfunction',
"endglobals" { return TypesJASS.KEYWORD_ENDGLOBALS; }
//    endif = 'endif',
//    endloop = 'endloop',
//    exitwhen = 'exitwhen',
"extends" { return TypesJASS.KEYWORD_EXTENDS; }
//    false = 'false',
//    function = 'function',
"globals" { return TypesJASS.KEYWORD_GLOBALS; }
//    if = 'if',
//    local = 'local',
//    loop = 'loop',
"native" { return TypesJASS.KEYWORD_NATIVE; }
"not" { return TypesJASS.NOT; }
//    null = 'null',
//    nothing = 'nothing',
"nothing" { return TypesJASS.KEYWORD_NOTHING; }
//    or = 'or',
//    returns = 'returns',
"returns" { return TypesJASS.KEYWORD_RETURNS; }
//    return = 'return',
//    set = 'set',
"takes" { return TypesJASS.KEYWORD_TAKES; }
//    then = 'then',
"type" { return TypesJASS.KEYWORD_TYPE; }
//    true = 'true',


"not" { return TypesJASS.NOT;}
"." { return TypesJASS.DOT;}
"," { return TypesJASS.COMMA;}
"=" { return TypesJASS.ASSIGN;}
"+" { return TypesJASS.PLUS;}
"-" { return TypesJASS.MINUS;}
"*" { return TypesJASS.MUL;}
"/" { return TypesJASS.DIV;}
"(" { return TypesJASS.LPAREN;}
")" { return TypesJASS.RPAREN;}

"<" { return TypesJASS.LT;}
"<=" { return TypesJASS.LT_EQ;}
">" { return TypesJASS.RT;}
">=" { return TypesJASS.RT_EQ;}
"==" { return TypesJASS.EQ_EQ;}
"!=" { return TypesJASS.NEQ;}

{IDENTIFIER} { return TypesJASS.IDENTIFIER; }
{INTEGER} { return TypesJASS.INTEGER; }
{SINGLE_LINE_COMMENT} { return TypesJASS.SINGLE_LINE_COMMENT;}
}


[^] { return TokenType.BAD_CHARACTER; }


