package guru.xgm.language.wts.openapi.fileTypes;

import com.intellij.lexer.Lexer;
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors;
import com.intellij.openapi.editor.HighlighterColors;
import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;
import guru.xgm.language.wts.lexer.WtsFlexAdapter;

import org.jetbrains.annotations.NotNull;

import static com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey;
import static guru.xgm.language.wts.psi.WtsTypes.*;

public class WtsSyntaxHighlighterBase extends SyntaxHighlighterBase {
    public static final TextAttributesKey KEYWORD_KEY = createTextAttributesKey("WTS_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] KEYWORD_KEYS = new TextAttributesKey[]{KEYWORD_KEY};
    public static final TextAttributesKey LINE_COMMENT_KEY = createTextAttributesKey("WTS_LINE_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TextAttributesKey[] LINE_COMMENT_KEYS = new TextAttributesKey[]{LINE_COMMENT_KEY};
    public static final TextAttributesKey BAD_CHARACTER_KEY = createTextAttributesKey("WTS_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER);
    private static final TextAttributesKey[] BAD_CHARACTER_KEYS = new TextAttributesKey[]{BAD_CHARACTER_KEY};
    private static final TextAttributesKey[] EMPTY_KEYS = new TextAttributesKey[0];
    public static final TextAttributesKey NUMBER_KEY = createTextAttributesKey("WTS_NUMBER", DefaultLanguageHighlighterColors.NUMBER);
    private static final TextAttributesKey[] NUMBER_KEYS = new TextAttributesKey[]{NUMBER_KEY};
    public static final TextAttributesKey STRING_KEY = createTextAttributesKey("WTS_STRING", DefaultLanguageHighlighterColors.STRING);
    private static final TextAttributesKey[] STRING_KEYS = new TextAttributesKey[]{STRING_KEY};

    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new WtsFlexAdapter();
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        if (tokenType == STRING) return KEYWORD_KEYS;
        if (tokenType == ID) return NUMBER_KEYS;
        if (tokenType == VALUE) return STRING_KEYS;

        if (tokenType == LINE_COMMENT) return LINE_COMMENT_KEYS;

        if (tokenType == TokenType.BAD_CHARACTER) return BAD_CHARACTER_KEYS;

        return EMPTY_KEYS;
    }
}
