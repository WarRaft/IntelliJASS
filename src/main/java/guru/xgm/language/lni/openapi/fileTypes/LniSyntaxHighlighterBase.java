package guru.xgm.language.lni.openapi.fileTypes;

import com.intellij.lexer.Lexer;
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors;
import com.intellij.openapi.editor.HighlighterColors;
import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;
import guru.xgm.language.lni.lexer.LniFlexAdapter;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;
import java.util.Objects;

import static com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey;
import static guru.xgm.language.lni.psi.LniTypes.*;

public class LniSyntaxHighlighterBase extends SyntaxHighlighterBase {
    public static final TextAttributesKey ID_KEY = createTextAttributesKey("LNI_ID", DefaultLanguageHighlighterColors.IDENTIFIER);
    private static final TextAttributesKey[] ID_KEYS = new TextAttributesKey[]{ID_KEY};
    public static final TextAttributesKey KEYWORD_KEY = createTextAttributesKey("LNI_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] KEYWORD_KEYS = new TextAttributesKey[]{KEYWORD_KEY};
    public static final TextAttributesKey LINE_COMMENT_KEY = createTextAttributesKey("LNI_LINE_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TextAttributesKey[] LINE_COMMENT_KEYS = new TextAttributesKey[]{LINE_COMMENT_KEY};
    public static final TextAttributesKey BAD_CHARACTER_KEY = createTextAttributesKey("LNI_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER);
    private static final TextAttributesKey[] BAD_CHARACTER_KEYS = new TextAttributesKey[]{BAD_CHARACTER_KEY};
    private static final TextAttributesKey[] EMPTY_KEYS = new TextAttributesKey[0];
    public static final TextAttributesKey NUMBER_KEY = createTextAttributesKey("LNI_NUMBER", DefaultLanguageHighlighterColors.NUMBER);
    private static final TextAttributesKey[] NUMBER_KEYS = new TextAttributesKey[]{NUMBER_KEY};
    public static final TextAttributesKey STRING_KEY = createTextAttributesKey("LNI_STRING", DefaultLanguageHighlighterColors.STRING);
    private static final TextAttributesKey[] STRING_KEYS = new TextAttributesKey[]{STRING_KEY};

    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new LniFlexAdapter();
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        if (Objects.equals(HEADVAL, tokenType)) return ID_KEYS;
        if (Objects.equals(ID, tokenType)) return KEYWORD_KEYS;
        if (Objects.equals(SINGLE_LINE_COMMENT, tokenType)) return LINE_COMMENT_KEYS;

        if (Arrays.asList(
                INTVAL,
                REALVAL,
                HEXVAL
        ).contains(tokenType)) {
            return NUMBER_KEYS;
        }

        if (Arrays.asList(
                STRVAL,
                STRVAL_MULT
        ).contains(tokenType)) {
            return STRING_KEYS;
        }

        if (tokenType == TokenType.BAD_CHARACTER) return BAD_CHARACTER_KEYS;

        return EMPTY_KEYS;
    }
}
