package guru.xgm.language.angelscript.openapi.fileTypes;

import com.intellij.lexer.Lexer;
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors;
import com.intellij.openapi.editor.HighlighterColors;
import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;
import guru.xgm.language.angelscript.lexer.AngelScriptFlexAdapter;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;
import java.util.Objects;

import static com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public class AngelScriptSyntaxHighlighterBase extends SyntaxHighlighterBase {
    public static final TextAttributesKey ID_KEY = createTextAttributesKey("ANGELSCRIPT_ID", DefaultLanguageHighlighterColors.IDENTIFIER);
    private static final TextAttributesKey[] ID_KEYS = new TextAttributesKey[]{ID_KEY};
    public static final TextAttributesKey KEYWORD_KEY = createTextAttributesKey("ANGELSCRIPT_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] KEYWORD_KEYS = new TextAttributesKey[]{KEYWORD_KEY};
    public static final TextAttributesKey TYPE_NAME_KEY = createTextAttributesKey("ANGELSCRIPT_TYPE_NAME", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TextAttributesKey[] TYPE_NAME_KEYS = new TextAttributesKey[]{TYPE_NAME_KEY};
    public static final TextAttributesKey LINE_COMMENT_KEY = createTextAttributesKey("ANGELSCRIPT_LINE_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TextAttributesKey[] LINE_COMMENT_KEYS = new TextAttributesKey[]{LINE_COMMENT_KEY};
    public static final TextAttributesKey BAD_CHARACTER_KEY = createTextAttributesKey("ANGELSCRIPT_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER);
    private static final TextAttributesKey[] BAD_CHARACTER_KEYS = new TextAttributesKey[]{BAD_CHARACTER_KEY};
    private static final TextAttributesKey[] EMPTY_KEYS = new TextAttributesKey[0];
    public static final TextAttributesKey COMMA_KEY = createTextAttributesKey("ANGELSCRIPT_COMMA", DefaultLanguageHighlighterColors.COMMA);
    private static final TextAttributesKey[] COMMA_KEYS = new TextAttributesKey[]{COMMA_KEY};
    public static final TextAttributesKey NUMBER_KEY = createTextAttributesKey("ANGELSCRIPT_NUMBER", DefaultLanguageHighlighterColors.NUMBER);
    private static final TextAttributesKey[] NUMBER_KEYS = new TextAttributesKey[]{NUMBER_KEY};
    public static final TextAttributesKey STRING_KEY = createTextAttributesKey("ANGELSCRIPT_STRING", DefaultLanguageHighlighterColors.STRING);
    private static final TextAttributesKey[] STRING_KEYS = new TextAttributesKey[]{STRING_KEY};

    public static final TextAttributesKey BRACES_KEY = createTextAttributesKey("ANGELSCRIPT_BRACES", DefaultLanguageHighlighterColors.BRACES);
    private static final TextAttributesKey[] BRACES_KEYS = new TextAttributesKey[]{BRACES_KEY};


    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new AngelScriptFlexAdapter();
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        if (tokenType == ID) return ID_KEYS;

        if (Arrays.asList(
                ABSTRACT,
                ARRAY,
                AND,
                AUTO,
                BREAK,
                CASE,
                CONST,
                CLASS,
                DEFAULT,
                DO,
                ELSE,
                ENUM,
                EXTERNAL,
                EXPLICIT,
                FINAL,
                FOR,
                FUNCDEF,
                FUNCTION,
                GET,
                IF,
                INCLUDE,
                IN,
                IS,
                INOUT,
                NAMESPACE,
                NULL,
                NIL,
                NIS,
                NOT,
                OVERRIDE,
                OR,
                OUT,
                PRIVATE,
                PROPERTY,
                PROTECTED,
                RETURN,
                SET,
                SHARED,
                STATIC,
                SWITCH,
                VOID,
                WHILE,
                XOR,
                TRUE,
                FALSE
        ).contains(tokenType)) {
            return KEYWORD_KEYS;
        }

        if (Arrays.asList(
                RAWVAL,
                INTVAL,
                REALVAL,
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
                STRING_ONE,
                STRING_THREE
        ).contains(tokenType)) {
            return STRING_KEYS;
        }

        if (Arrays.asList(
                LBRACE,
                RBRACE
        ).contains(tokenType)) {
            return BRACES_KEYS;
        }

        if (Objects.equals(TYPE, tokenType)) {
            return TYPE_NAME_KEYS;
        }

        if (tokenType == TokenType.BAD_CHARACTER) return BAD_CHARACTER_KEYS;
        if (tokenType == COMMA) return COMMA_KEYS;

        return EMPTY_KEYS;
    }
}
