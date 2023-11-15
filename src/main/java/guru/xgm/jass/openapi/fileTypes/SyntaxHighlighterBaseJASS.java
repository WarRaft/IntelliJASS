package guru.xgm.jass.openapi.fileTypes;

import guru.xgm.jass.lexer.FlexAdapterJASS;

import static guru.xgm.jass.psi.TypesJASS.*;

import com.intellij.lexer.Lexer;
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors;
import com.intellij.openapi.editor.HighlighterColors;
import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;

import static com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey;

public class SyntaxHighlighterBaseJASS extends SyntaxHighlighterBase {
    public static final TextAttributesKey JASS_ID = createTextAttributesKey("JASS_ID", DefaultLanguageHighlighterColors.IDENTIFIER);
    private static final TextAttributesKey[] JASS_ID_KEYS = new TextAttributesKey[]{JASS_ID};
    public static final TextAttributesKey KEYWORD = createTextAttributesKey("JASS_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] KEYWORD_KEYS = new TextAttributesKey[]{KEYWORD};
    public static final TextAttributesKey LINE_COMMENT = createTextAttributesKey("JASS_LINE_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TextAttributesKey[] LINE_COMMENT_KEYS = new TextAttributesKey[]{LINE_COMMENT};
    public static final TextAttributesKey BAD_CHARACTER = createTextAttributesKey("JASS_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER);
    private static final TextAttributesKey[] BAD_CHARACTER_KEYS = new TextAttributesKey[]{BAD_CHARACTER};
    private static final TextAttributesKey[] EMPTY_KEYS = new TextAttributesKey[0];
    public static final TextAttributesKey JASS_COMMA = createTextAttributesKey("JASS_COMMA", DefaultLanguageHighlighterColors.COMMA);
    private static final TextAttributesKey[] COMMA_KEYS = new TextAttributesKey[]{JASS_COMMA};
    public static final TextAttributesKey NUMBER = createTextAttributesKey("JASS_NUMBER", DefaultLanguageHighlighterColors.NUMBER);
    private static final TextAttributesKey[] NUMBER_KEYS = new TextAttributesKey[]{NUMBER};
    public static final TextAttributesKey JASS_STRING = createTextAttributesKey("JASS_STRING", DefaultLanguageHighlighterColors.STRING);
    private static final TextAttributesKey[] STRING_KEYS = new TextAttributesKey[]{JASS_STRING};

    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new FlexAdapterJASS();
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        if (tokenType == ID) return JASS_ID_KEYS;

        if (Arrays.asList(
                AND,
                ARRAY,
                CALL,
                CONSTANT,
                DEBUG,
                ELSE,
                ELSEIF,
                ENDFUNCTION,
                ENDGLOBALS,
                ENDLOOP,
                ENDIF,
                EXTENDS,
                EXITWHEN,
                FALSE,
                FUNCTION,
                GLOBALS,
                IF,
                LOCAL,
                LOOP,
                NATIVE,
                NOTHING,
                NULL,
                OR,
                RETURN,
                RETURNS,
                SET,
                TAKES,
                THEN,
                TRUE,
                TYPE
        ).contains(tokenType)) {
            return KEYWORD_KEYS;
        }

        if (Arrays.asList(
                INTVAL,
                REALVAL,
                RAWVAL,
                HEXVAL
        ).contains(tokenType)) {
            return NUMBER_KEYS;
        }

        if (tokenType == SINGLE_LINE_COMMENT) return LINE_COMMENT_KEYS;
        if (tokenType == TokenType.BAD_CHARACTER) return BAD_CHARACTER_KEYS;
        if (tokenType == COMMA) return COMMA_KEYS;
        if (tokenType == STRVAL) return STRING_KEYS;

        return EMPTY_KEYS;
    }

}
