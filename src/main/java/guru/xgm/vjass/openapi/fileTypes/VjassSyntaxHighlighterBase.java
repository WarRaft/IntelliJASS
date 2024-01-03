package guru.xgm.vjass.openapi.fileTypes;

import com.intellij.lexer.Lexer;
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors;
import com.intellij.openapi.editor.HighlighterColors;
import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;
import guru.xgm.vjass.lexer.VjassFlexAdapter;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;

import static com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey;
import static guru.xgm.vjass.psi.VjassTypes.*;

public class VjassSyntaxHighlighterBase extends SyntaxHighlighterBase {
    public static final TextAttributesKey ID_KEY = createTextAttributesKey("VJASS_ID", DefaultLanguageHighlighterColors.IDENTIFIER);
    private static final TextAttributesKey[] ID_KEYS = new TextAttributesKey[]{ID_KEY};
    public static final TextAttributesKey KEYWORD_KEY = createTextAttributesKey("VJASS_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] KEYWORD_KEYS = new TextAttributesKey[]{KEYWORD_KEY};
    public static final TextAttributesKey TYPE_NAME_KEY = createTextAttributesKey("VJASS_TYPE_NAME", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] TYPE_NAME_KEYS = new TextAttributesKey[]{TYPE_NAME_KEY};
    public static final TextAttributesKey LINE_COMMENT_KEY = createTextAttributesKey("VJASS_LINE_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TextAttributesKey[] LINE_COMMENT_KEYS = new TextAttributesKey[]{LINE_COMMENT_KEY};
    public static final TextAttributesKey BAD_CHARACTER_KEY = createTextAttributesKey("VJASS_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER);
    private static final TextAttributesKey[] BAD_CHARACTER_KEYS = new TextAttributesKey[]{BAD_CHARACTER_KEY};
    private static final TextAttributesKey[] EMPTY_KEYS = new TextAttributesKey[0];
    public static final TextAttributesKey COMMA_KEY = createTextAttributesKey("VJASS_COMMA", DefaultLanguageHighlighterColors.COMMA);
    private static final TextAttributesKey[] COMMA_KEYS = new TextAttributesKey[]{COMMA_KEY};
    public static final TextAttributesKey NUMBER_KEY = createTextAttributesKey("VJASS_NUMBER", DefaultLanguageHighlighterColors.NUMBER);
    private static final TextAttributesKey[] NUMBER_KEYS = new TextAttributesKey[]{NUMBER_KEY};
    public static final TextAttributesKey STRING_KEY = createTextAttributesKey("VJASS_STRING", DefaultLanguageHighlighterColors.STRING);
    private static final TextAttributesKey[] STRING_KEYS = new TextAttributesKey[]{STRING_KEY};

    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new VjassFlexAdapter();
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        if (tokenType == ID) return ID_KEYS;

        if (Arrays.asList(
                CONSTANT,
                ELSE,
                FALSE,
                FUNCTION,
                IF,
                LIBRARY,
                METHOD,
                NATIVE,
                OPTIONAL,
                PRIVATE,
                PUBLIC,
                RETURNS,
                REQUIRES,
                STATIC,
                STRUCT,
                TAKES,
                TRUE
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

        if (Arrays.asList(
                SINGLE_LINE_COMMENT,
                MULTI_LINE_COMMENT
        ).contains(tokenType)) {
            return LINE_COMMENT_KEYS;
        }

        if (Arrays.asList(
                NOTHING,
                TYPE_NAME
        ).contains(tokenType)) {
            return TYPE_NAME_KEYS;
        }

        if (tokenType == TokenType.BAD_CHARACTER) return BAD_CHARACTER_KEYS;
        if (tokenType == COMMA) return COMMA_KEYS;
        if (tokenType == STRVAL) return STRING_KEYS;

        return EMPTY_KEYS;
    }
}
