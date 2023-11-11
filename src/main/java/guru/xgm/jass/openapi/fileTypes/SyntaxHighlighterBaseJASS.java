package guru.xgm.jass.openapi.fileTypes;

import guru.xgm.jass.lexer.FlexAdapterJASS;
import guru.xgm.jass.psi.TypesJASS;

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
    // IDENTIFIER
    public static final TextAttributesKey IDENTIFIER = createTextAttributesKey("JASS_IDENTIFIER", DefaultLanguageHighlighterColors.IDENTIFIER);
    private static final TextAttributesKey[] IDENTIFIER_KEYS = new TextAttributesKey[]{IDENTIFIER};
    // KEYWORD
    public static final TextAttributesKey KEYWORD = createTextAttributesKey("JASS_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] KEYWORD_KEYS = new TextAttributesKey[]{KEYWORD};
    // LINE_COMMENT
    public static final TextAttributesKey LINE_COMMENT = createTextAttributesKey("JASS_LINE_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TextAttributesKey[] LINE_COMMENT_KEYS = new TextAttributesKey[]{LINE_COMMENT};
    // BAD_CHARACTER_KEYS
    public static final TextAttributesKey BAD_CHARACTER = createTextAttributesKey("JASS_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER);
    private static final TextAttributesKey[] BAD_CHARACTER_KEYS = new TextAttributesKey[]{BAD_CHARACTER};
    // EMPTY_KEYS
    private static final TextAttributesKey[] EMPTY_KEYS = new TextAttributesKey[0];
    // COMMA
    public static final TextAttributesKey COMMA = createTextAttributesKey("JASS_COMMA", DefaultLanguageHighlighterColors.COMMA);
    private static final TextAttributesKey[] COMMA_KEYS = new TextAttributesKey[]{COMMA};
    // NUMBER
    public static final TextAttributesKey NUMBER = createTextAttributesKey("JASS_NUMBER", DefaultLanguageHighlighterColors.NUMBER);
    private static final TextAttributesKey[] NUMBER_KEYS = new TextAttributesKey[]{NUMBER};
    // STRING
    public static final TextAttributesKey STRING = createTextAttributesKey("JASS_STRING", DefaultLanguageHighlighterColors.STRING);
    private static final TextAttributesKey[] STRING_KEYS = new TextAttributesKey[]{STRING};

    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new FlexAdapterJASS();
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        if (tokenType == TypesJASS.IDENTIFIER) return IDENTIFIER_KEYS;

        if (Arrays.asList(
                TypesJASS.KEYWORD_TYPE,
                TypesJASS.KEYWORD_EXTENDS,
                TypesJASS.KEYWORD_CONSTANT,
                TypesJASS.KEYWORD_NATIVE,
                TypesJASS.KEYWORD_TAKES,
                TypesJASS.KEYWORD_RETURNS,
                TypesJASS.NOTHING,
                TypesJASS.KEYWORD_GLOBALS,
                TypesJASS.KEYWORD_ENDGLOBALS,
                TypesJASS.KEYWORD_FUNCTION,
                TypesJASS.KEYWORD_ENDFUNCTION,
                TypesJASS.ARRAY,
                TypesJASS.AND,
                TypesJASS.OR,
                TypesJASS.SET
        ).contains(tokenType)) {
            return KEYWORD_KEYS;
        }

        if (Arrays.asList(
                TypesJASS.INTEGER,
                TypesJASS.REAL,
                TypesJASS.RAWCODE,
                TypesJASS.HEX
        ).contains(tokenType)) {
            return NUMBER_KEYS;
        }

        if (tokenType == TypesJASS.SINGLE_LINE_COMMENT) return LINE_COMMENT_KEYS;
        if (tokenType == TokenType.BAD_CHARACTER) return BAD_CHARACTER_KEYS;
        if (tokenType == TypesJASS.COMMA) return COMMA_KEYS;
        if (tokenType == TypesJASS.STRING) return STRING_KEYS;

        return EMPTY_KEYS;
    }

}
