package guru.xgm.jass.lexer;

import guru.xgm.jass.psi.TypesJASS;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;

%%

%class LexerJASS
%implements FlexLexer
%unicode
%function advance
%type IElementType
%eof{  return;
%eof}

CRLF=\R
WHITE_SPACE=[\ \n\t\f]
FIRST_VALUE_CHARACTER=[^ \n\f\\] | "\\"{CRLF} | "\\".
VALUE_CHARACTER=[^\n\f\\] | "\\"{CRLF} | "\\".
END_OF_LINE_COMMENT=("#"|"!")[^\r\n]*
SEPARATOR=[:=]
KEY_CHARACTER=[^:=\ \n\t\f\\] | "\\ "

%state WAITING_VALUE

%%

<YYINITIAL> {
{WHITE_SPACE}{ return WHITE_SPACE; }
"and"{ return AND; }
//    array = 'array',
//    call = 'call',
//    constant = 'constant',
//    debug = 'debug',
//    else = 'else',
//    elseif = 'elseif',
//    endfunction = 'endfunction',
//    endglobals = 'endglobals',
//    endif = 'endif',
//    endloop = 'endloop',
//    exitwhen = 'exitwhen',
//    extends = 'extends',
//    false = 'false',
//    function = 'function',
//    globals = 'globals',
//    if = 'if',
//    local = 'local',
//    loop = 'loop',
//    native = 'native',
//    not = 'not',
//    null = 'null',
//    nothing = 'nothing',
//    or = 'or',
//    returns = 'returns',
//    return = 'return',
//    set = 'set',
//    takes = 'takes',
//    then = 'then',
//    type = 'type',
"type"{ return TYPE; }
//    true = 'true',
}

[^] { return TokenType.BAD_CHARACTER; }


