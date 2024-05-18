package guru.xgm.language.angelscript.openapi.fileTypes

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import com.squareup.wire.internal.JvmField
import guru.xgm.language.angelscript.lexer.AngelScriptFlexAdapter
import guru.xgm.language.angelscript.psi.AngelScriptTypes

class AngelScriptSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> {
        return pack(ATTRIBUTES[tokenType])
    }

    override fun getHighlightingLexer(): Lexer {
        return AngelScriptFlexAdapter()
    }

    companion object {

        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        @JvmField
        val INJECTOR: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_INJECTOR", HighlighterColors.BAD_CHARACTER)

        @JvmField
        val BAD_CHARACTER_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_BAD_CHARACTER", HighlighterColors.BAD_CHARACTER)
        private val BAD_CHARACTER_SET = TokenSet.create(TokenType.BAD_CHARACTER)

        private val ID_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_ID", DefaultLanguageHighlighterColors.IDENTIFIER)
        private val ID_SET = TokenSet.create(AngelScriptTypes.ID)

        @JvmField
        val LINE_COMMENT_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_LINE_COMMENT",
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )
        private val LINE_COMMENT_SET = TokenSet.create(AngelScriptTypes.LINE_COMMENT)

        @JvmField
        val BLOCK_COMMENT_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_BLOCK_COMMENT",
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )
        private val BLOCK_COMMENT_SET = TokenSet.create(AngelScriptTypes.BLOCK_COMMENT)

        @JvmField
        val KEYWORD_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD)
        private val KEYWORD_SET = TokenSet.create(
            AngelScriptTypes.ABSTRACT,
            AngelScriptTypes.ARRAY,
            AngelScriptTypes.AUTO,
            AngelScriptTypes.BREAK,
            AngelScriptTypes.CASE,
            AngelScriptTypes.CONST,
            AngelScriptTypes.CLASSS,
            AngelScriptTypes.DEFAULT,
            AngelScriptTypes.DO,
            AngelScriptTypes.ELSE,
            AngelScriptTypes.ENUM,
            AngelScriptTypes.EXTERNAL,
            AngelScriptTypes.EXPLICIT,
            AngelScriptTypes.FINAL,
            AngelScriptTypes.FOR,
            AngelScriptTypes.FUNCDEF,
            AngelScriptTypes.FUNCTION,
            AngelScriptTypes.GET,
            AngelScriptTypes.IF,
            AngelScriptTypes.INCLUDE,
            AngelScriptTypes.IN,
            AngelScriptTypes.INOUT,
            AngelScriptTypes.NAMESPACE,
            AngelScriptTypes.NULL,
            AngelScriptTypes.NIL,
            AngelScriptTypes.OVERRIDE,
            AngelScriptTypes.OUT,
            AngelScriptTypes.PRIVATE,
            AngelScriptTypes.PROPERTY,
            AngelScriptTypes.PROTECTED,
            AngelScriptTypes.RETURN,
            AngelScriptTypes.SET,
            AngelScriptTypes.SHARED,
            AngelScriptTypes.STATIC,
            AngelScriptTypes.SWITCH,
            AngelScriptTypes.WHILE,
            AngelScriptTypes.TRUE,
            AngelScriptTypes.FALSE
        )

        @JvmField
        val NUMBER_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_NUMBER", DefaultLanguageHighlighterColors.NUMBER)
        private val NUMBER_SET = TokenSet.create(
            AngelScriptTypes.RAWVAL,
            AngelScriptTypes.INTVAL,
            AngelScriptTypes.REALVAL,
            AngelScriptTypes.HEXVAL
        )

        @JvmField
        val PARENTHESES_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_PARENTHESES",
            DefaultLanguageHighlighterColors.PARENTHESES
        )
        private val PARENTHESES_SET = TokenSet.create(AngelScriptTypes.LPAREN, AngelScriptTypes.RPAREN)

        @JvmField
        val BRACES_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_BRACES", DefaultLanguageHighlighterColors.BRACES)
        private val BRACES_SET = TokenSet.create(AngelScriptTypes.LBRACE, AngelScriptTypes.RBRACE)

        @JvmField
        val BRACKETS_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_BRACKETS", DefaultLanguageHighlighterColors.BRACKETS)
        private val BRACKETS_SET = TokenSet.create(AngelScriptTypes.LBRACK, AngelScriptTypes.RBRACK)

        @JvmField
        val COMMA_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_COMMA", DefaultLanguageHighlighterColors.COMMA)
        private val COMMA_SET = TokenSet.create(AngelScriptTypes.COMMA)

        @JvmField
        val SEMICOLON_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_SEMICOLON",
            DefaultLanguageHighlighterColors.SEMICOLON
        )
        private val SEMICOLON_SET = TokenSet.create(AngelScriptTypes.SEMI)

        @JvmField
        val DOT_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_DOT", DefaultLanguageHighlighterColors.DOT)
        private val DOT_SET = TokenSet.create(AngelScriptTypes.DOT)

        @JvmField
        val OPERATION_SIGN_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_OPERATION_SIGN",
            DefaultLanguageHighlighterColors.OPERATION_SIGN
        )
        private val OPERATION_SIGN_SET = TokenSet.create(
            AngelScriptTypes.COLON_COLON,
            AngelScriptTypes.PLUS_PLUS,
            AngelScriptTypes.MINUS_MINUS,
            AngelScriptTypes.TILDE,
            AngelScriptTypes.EXCL,
            AngelScriptTypes.NOT,
            AngelScriptTypes.MINUS,
            AngelScriptTypes.PLUS,
            AngelScriptTypes.AT,
            AngelScriptTypes.CAST,
            AngelScriptTypes.MUL_MUL,
            AngelScriptTypes.MUL,
            AngelScriptTypes.DIV,
            AngelScriptTypes.PERCENT,
            AngelScriptTypes.LT_LT,
            AngelScriptTypes.GT_GT,
            AngelScriptTypes.GT_GT_GT,
            AngelScriptTypes.LT,
            AngelScriptTypes.GT,
            AngelScriptTypes.LT_EQ,
            AngelScriptTypes.GT_EQ,
            AngelScriptTypes.EQ_EQ,
            AngelScriptTypes.NEQ,
            AngelScriptTypes.CAR_CAR,
            AngelScriptTypes.XOR,
            AngelScriptTypes.IS,
            AngelScriptTypes.NIS,
            AngelScriptTypes.AMP,
            AngelScriptTypes.CAR,
            AngelScriptTypes.VBAR,
            AngelScriptTypes.AMP_AMP,
            AngelScriptTypes.AND,
            AngelScriptTypes.VBAR_VBAR,
            AngelScriptTypes.OR,
            AngelScriptTypes.QUEST,
            AngelScriptTypes.COLON,
            AngelScriptTypes.EQ,
            AngelScriptTypes.MUL_MUL_EQ,
            AngelScriptTypes.MUL_EQ,
            AngelScriptTypes.DIV_EQ,
            AngelScriptTypes.PERCENT_EQ,
            AngelScriptTypes.PLUS_EQ,
            AngelScriptTypes.MINUS_EQ,
            AngelScriptTypes.LT_LT_EQ,
            AngelScriptTypes.GT_GT_EQ,
            AngelScriptTypes.AMP_EQ,
            AngelScriptTypes.CAR_EQ,
            AngelScriptTypes.VBAR_EQ
        )

        @JvmField
        val STRING_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_STRING", DefaultLanguageHighlighterColors.STRING)
        private val STRING_SET = TokenSet.create(AngelScriptTypes.STRING_ONE, AngelScriptTypes.STRING_THREE)

        @JvmField
        val VALID_STRING_ESCAPE_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_VALID_STRING_ESCAPE",
            DefaultLanguageHighlighterColors.VALID_STRING_ESCAPE
        )

        @JvmField
        val INVALID_STRING_ESCAPE_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_INVALID_STRING_ESCAPE",
            DefaultLanguageHighlighterColors.INVALID_STRING_ESCAPE
        )

        @JvmField
        val TYPE_NAME_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_TYPE_NAME", DefaultLanguageHighlighterColors.KEYWORD)
        private val TYPE_NAME_SET = TokenSet.create(
            AngelScriptTypes.ARRAY,
            AngelScriptTypes.BOOL,
            AngelScriptTypes.CODE,
            AngelScriptTypes.DOUBLE,
            AngelScriptTypes.FLOAT,
            AngelScriptTypes.HANDLE,
            AngelScriptTypes.INT,
            AngelScriptTypes.INT8,
            AngelScriptTypes.INT16,
            AngelScriptTypes.INT32,
            AngelScriptTypes.INT64,
            AngelScriptTypes.STRING,
            AngelScriptTypes.UINT,
            AngelScriptTypes.UINT16,
            AngelScriptTypes.UINT32,
            AngelScriptTypes.UINT64,
            AngelScriptTypes.VOID
        )

        init {
            fillMap(ATTRIBUTES, BAD_CHARACTER_SET, BAD_CHARACTER_KEY)
            fillMap(ATTRIBUTES, ID_SET, ID_KEY)
            fillMap(ATTRIBUTES, KEYWORD_SET, KEYWORD_KEY)
            fillMap(ATTRIBUTES, LINE_COMMENT_SET, LINE_COMMENT_KEY)
            fillMap(ATTRIBUTES, BLOCK_COMMENT_SET, BLOCK_COMMENT_KEY)
            fillMap(ATTRIBUTES, NUMBER_SET, NUMBER_KEY)
            fillMap(ATTRIBUTES, PARENTHESES_SET, PARENTHESES_KEY)
            fillMap(ATTRIBUTES, BRACES_SET, BRACES_KEY)
            fillMap(ATTRIBUTES, BRACKETS_SET, BRACKETS_KEY)
            fillMap(ATTRIBUTES, COMMA_SET, COMMA_KEY)
            fillMap(ATTRIBUTES, SEMICOLON_SET, SEMICOLON_KEY)
            fillMap(ATTRIBUTES, DOT_SET, DOT_KEY)
            fillMap(ATTRIBUTES, OPERATION_SIGN_SET, OPERATION_SIGN_KEY)
            fillMap(ATTRIBUTES, STRING_SET, STRING_KEY)
            fillMap(ATTRIBUTES, TYPE_NAME_SET, TYPE_NAME_KEY)
        }
    }
}
