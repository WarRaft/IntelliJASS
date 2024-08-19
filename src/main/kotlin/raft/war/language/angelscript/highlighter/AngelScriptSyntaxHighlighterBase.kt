package raft.war.language.angelscript.highlighter

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import com.squareup.wire.internal.JvmField
import raft.war.language.angelscript.lexer.AngelScriptFlexAdapter
import raft.war.language.angelscript.psi.AngelScriptTypes.*

class AngelScriptSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])
    override fun getHighlightingLexer(): Lexer = AngelScriptFlexAdapter()

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
        private val ID_SET = TokenSet.create(ID)

        @JvmField
        val LINE_COMMENT_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_LINE_COMMENT",
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )
        private val LINE_COMMENT_SET = TokenSet.create(LINE_COMMENT)

        @JvmField
        val BLOCK_COMMENT_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_BLOCK_COMMENT",
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )
        private val BLOCK_COMMENT_SET = TokenSet.create(BLOCK_COMMENT)

        @JvmField
        val KEYWORD_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD)
        private val KEYWORD_SET = TokenSet.create(
            ABSTRACT,
            ARRAY,
            AUTO,
            BREAK,
            CASE,
            CONST,
            CLAS,
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
        )

        @JvmField
        val NUMBER_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_NUMBER", DefaultLanguageHighlighterColors.NUMBER)
        private val NUMBER_SET = TokenSet.create(
            RAWVAL,
            INTVAL,
            REALVAL,
            HEXVAL
        )

        @JvmField
        val PARENTHESES_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_PARENTHESES",
            DefaultLanguageHighlighterColors.PARENTHESES
        )
        private val PARENTHESES_SET = TokenSet.create(LPAREN, RPAREN)

        @JvmField
        val BRACES_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_BRACES", DefaultLanguageHighlighterColors.BRACES)
        private val BRACES_SET = TokenSet.create(LBRACE, RBRACE)

        @JvmField
        val BRACKETS_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_BRACKETS", DefaultLanguageHighlighterColors.BRACKETS)
        private val BRACKETS_SET = TokenSet.create(LBRACK, RBRACK)

        @JvmField
        val COMMA_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_COMMA", DefaultLanguageHighlighterColors.COMMA)
        private val COMMA_SET = TokenSet.create(COMMA)

        @JvmField
        val SEMICOLON_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_SEMICOLON",
            DefaultLanguageHighlighterColors.SEMICOLON
        )
        private val SEMICOLON_SET = TokenSet.create(SEMI)

        @JvmField
        val DOT_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_DOT", DefaultLanguageHighlighterColors.DOT)
        private val DOT_SET = TokenSet.create(DOT)

        @JvmField
        val OPERATION_SIGN_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_OPERATION_SIGN",
            DefaultLanguageHighlighterColors.OPERATION_SIGN
        )
        private val OPERATION_SIGN_SET = TokenSet.create(
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
        )

        @JvmField
        val STRING_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_STRING", DefaultLanguageHighlighterColors.STRING)
        private val STRING_SET = TokenSet.create(STRING_ONE, STRING_THREE)

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
            ARRAY,
            BOOL,
            CODE,
            DOUBLE,
            FLOAT,
            HANDLE,
            INT,
            INT8,
            INT16,
            INT32,
            INT64,
            STRING,
            UINT,
            UINT16,
            UINT32,
            UINT64,
            VOID
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
