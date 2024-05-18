package guru.xgm.language.angelscript.openapi.fileTypes;

import com.intellij.lexer.Lexer;
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors;
import com.intellij.openapi.editor.HighlighterColors;
import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase;
import com.intellij.psi.TokenType;
import com.intellij.psi.tree.IElementType;
import com.intellij.psi.tree.TokenSet;
import guru.xgm.language.angelscript.lexer.AngelScriptFlexAdapter;
import org.jetbrains.annotations.NotNull;

import java.util.HashMap;
import java.util.Map;

import static com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey;
import static guru.xgm.language.angelscript.psi.AngelScriptTypes.*;

public class AngelScriptSyntaxHighlighterBase extends SyntaxHighlighterBase {
    private static final Map<IElementType, TextAttributesKey> ATTRIBUTES = new HashMap<>();

    public static final TextAttributesKey BAD_CHARACTER_KEY = createTextAttributesKey("ANGELSCRIPT_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER);
    private static final TokenSet BAD_CHARACTER_SET = TokenSet.create(TokenType.BAD_CHARACTER);

    public static final TextAttributesKey ID_KEY = createTextAttributesKey("ANGELSCRIPT_ID", DefaultLanguageHighlighterColors.IDENTIFIER);
    private static final TokenSet ID_SET = TokenSet.create(ID);

    public static final TextAttributesKey LINE_COMMENT_KEY = createTextAttributesKey("ANGELSCRIPT_LINE_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TokenSet LINE_COMMENT_SET = TokenSet.create(LINE_COMMENT);

    public static final TextAttributesKey BLOCK_COMMENT_KEY = createTextAttributesKey("ANGELSCRIPT_BLOCK_COMMENT", DefaultLanguageHighlighterColors.LINE_COMMENT);
    private static final TokenSet BLOCK_COMMENT_SET = TokenSet.create(BLOCK_COMMENT);

    public static final TextAttributesKey KEYWORD_KEY = createTextAttributesKey("ANGELSCRIPT_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TokenSet KEYWORD_SET = TokenSet.create(
            ABSTRACT,
            ARRAY,
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
            INOUT,
            NAMESPACE,
            NULL,
            NIL,
            OVERRIDE,
            OUT,
            PRIVATE,
            PROPERTY,
            PROTECTED,
            RETURN,
            SET,
            SHARED,
            STATIC,
            SWITCH,
            WHILE,
            TRUE,
            FALSE
    );

    public static final TextAttributesKey NUMBER_KEY = createTextAttributesKey("ANGELSCRIPT_NUMBER", DefaultLanguageHighlighterColors.NUMBER);
    private static final TokenSet NUMBER_SET = TokenSet.create(RAWVAL, INTVAL, REALVAL, HEXVAL);

    public static final TextAttributesKey PARENTHESES_KEY = createTextAttributesKey("ANGELSCRIPT_PARENTHESES", DefaultLanguageHighlighterColors.PARENTHESES);
    private static final TokenSet PARENTHESES_SET = TokenSet.create(LPAREN, RPAREN);

    public static final TextAttributesKey BRACES_KEY = createTextAttributesKey("ANGELSCRIPT_BRACES", DefaultLanguageHighlighterColors.BRACES);
    private static final TokenSet BRACES_SET = TokenSet.create(LBRACE, RBRACE);

    public static final TextAttributesKey BRACKETS_KEY = createTextAttributesKey("ANGELSCRIPT_BRACKETS", DefaultLanguageHighlighterColors.BRACKETS);
    private static final TokenSet BRACKETS_SET = TokenSet.create(LBRACK, RBRACK);

    public static final TextAttributesKey COMMA_KEY = createTextAttributesKey("ANGELSCRIPT_COMMA", DefaultLanguageHighlighterColors.COMMA);
    private static final TokenSet COMMA_SET = TokenSet.create(COMMA);

    public static final TextAttributesKey SEMICOLON_KEY = createTextAttributesKey("ANGELSCRIPT_SEMICOLON", DefaultLanguageHighlighterColors.SEMICOLON);
    private static final TokenSet SEMICOLON_SET = TokenSet.create(SEMI);

    public static final TextAttributesKey DOT_KEY = createTextAttributesKey("ANGELSCRIPT_DOT", DefaultLanguageHighlighterColors.DOT);
    private static final TokenSet DOT_SET = TokenSet.create(DOT);

    public static final TextAttributesKey OPERATION_SIGN_KEY = createTextAttributesKey("ANGELSCRIPT_OPERATION_SIGN", DefaultLanguageHighlighterColors.OPERATION_SIGN);
    private static final TokenSet OPERATION_SIGN_SET = TokenSet.create(
            COLON_COLON,
            PLUS_PLUS,
            MINUS_MINUS,
            TILDE,
            EXCL,
            NOT,
            MINUS,
            PLUS,
            AT,
            CAST,
            MUL_MUL,
            MUL,
            DIV,
            PERCENT,
            LT_LT,
            GT_GT,
            GT_GT_GT,
            LT,
            GT,
            LT_EQ,
            GT_EQ,
            EQ_EQ,
            NEQ,
            CAR_CAR,
            XOR,
            IS,
            NIS,
            AMP,
            CAR,
            VBAR,
            AMP_AMP,
            AND,
            VBAR_VBAR,
            OR,
            QUEST,
            COLON,
            EQ,
            MUL_MUL_EQ,
            MUL_EQ,
            DIV_EQ,
            PERCENT_EQ,
            PLUS_EQ,
            MINUS_EQ,
            LT_LT_EQ,
            GT_GT_EQ,
            AMP_EQ,
            CAR_EQ,
            VBAR_EQ
    );

    public static final TextAttributesKey STRING_KEY = createTextAttributesKey("ANGELSCRIPT_STRING", DefaultLanguageHighlighterColors.STRING);
    private static final TokenSet STRING_SET = TokenSet.create(STRING_ONE, STRING_THREE);

    public static final TextAttributesKey VALID_STRING_ESCAPE_KEY = createTextAttributesKey("ANGELSCRIPT_VALID_STRING_ESCAPE", DefaultLanguageHighlighterColors.VALID_STRING_ESCAPE);

    public static final TextAttributesKey INVALID_STRING_ESCAPE_KEY = createTextAttributesKey("ANGELSCRIPT_INVALID_STRING_ESCAPE", DefaultLanguageHighlighterColors.INVALID_STRING_ESCAPE);

    public static final TextAttributesKey TYPE_NAME_KEY = createTextAttributesKey("ANGELSCRIPT_TYPE_NAME", DefaultLanguageHighlighterColors.KEYWORD);
    private static final TokenSet TYPE_NAME_SET = TokenSet.create(
            ARRAY, BOOL, CODE, DOUBLE, FLOAT, HANDLE, INT, INT8, INT16, INT32, INT64, STRING, UINT, UINT16, UINT32, UINT64, VOID
    );

    static {
        fillMap(ATTRIBUTES, BAD_CHARACTER_SET, BAD_CHARACTER_KEY);
        fillMap(ATTRIBUTES, ID_SET, ID_KEY);
        fillMap(ATTRIBUTES, KEYWORD_SET, KEYWORD_KEY);
        fillMap(ATTRIBUTES, LINE_COMMENT_SET, LINE_COMMENT_KEY);
        fillMap(ATTRIBUTES, BLOCK_COMMENT_SET, BLOCK_COMMENT_KEY);
        fillMap(ATTRIBUTES, NUMBER_SET, NUMBER_KEY);
        fillMap(ATTRIBUTES, PARENTHESES_SET, PARENTHESES_KEY);
        fillMap(ATTRIBUTES, BRACES_SET, BRACES_KEY);
        fillMap(ATTRIBUTES, BRACKETS_SET, BRACKETS_KEY);
        fillMap(ATTRIBUTES, COMMA_SET, COMMA_KEY);
        fillMap(ATTRIBUTES, SEMICOLON_SET, SEMICOLON_KEY);
        fillMap(ATTRIBUTES, DOT_SET, DOT_KEY);
        fillMap(ATTRIBUTES, OPERATION_SIGN_SET, OPERATION_SIGN_KEY);
        fillMap(ATTRIBUTES, STRING_SET, STRING_KEY);
        fillMap(ATTRIBUTES, TYPE_NAME_SET, TYPE_NAME_KEY);
    }

    @Override
    public TextAttributesKey @NotNull [] getTokenHighlights(IElementType tokenType) {
        return pack(ATTRIBUTES.get(tokenType));
    }

    @NotNull
    @Override
    public Lexer getHighlightingLexer() {
        return new AngelScriptFlexAdapter();
    }
}
