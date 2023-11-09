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

    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new FlexAdapterJASS();
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        if (tokenType == TypesJASS.IDENTIFIER) return IDENTIFIER_KEYS;
        // keyword
        if (tokenType == TypesJASS.KEYWORD_TYPE) return KEYWORD_KEYS;
        if (tokenType == TypesJASS.KEYWORD_EXTENDS) return KEYWORD_KEYS;
        if (tokenType == TypesJASS.KEYWORD_CONSTANT) return KEYWORD_KEYS;
        if (tokenType == TypesJASS.KEYWORD_NATIVE) return KEYWORD_KEYS;
        if (tokenType == TypesJASS.KEYWORD_TAKES) return KEYWORD_KEYS;
        if (tokenType == TypesJASS.KEYWORD_RETURNS) return KEYWORD_KEYS;
        if (tokenType == TypesJASS.KEYWORD_NOTHING) return KEYWORD_KEYS;
        // comment
        if (tokenType == TypesJASS.SINGLE_LINE_COMMENT) return LINE_COMMENT_KEYS;
        // bad
        if (tokenType == TokenType.BAD_CHARACTER) return BAD_CHARACTER_KEYS;
        // return
        return EMPTY_KEYS;
    }

}
