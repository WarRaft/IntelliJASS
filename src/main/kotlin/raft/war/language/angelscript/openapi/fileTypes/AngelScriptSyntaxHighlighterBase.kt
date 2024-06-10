package raft.war.language.angelscript.openapi.fileTypes

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
import raft.war.language.angelscript.psi.AngelScriptTypes

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
        private val ID_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.ID)

        @JvmField
        val LINE_COMMENT_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_LINE_COMMENT",
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )
        private val LINE_COMMENT_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.LINE_COMMENT)

        @JvmField
        val BLOCK_COMMENT_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_BLOCK_COMMENT",
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )
        private val BLOCK_COMMENT_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.BLOCK_COMMENT)

        @JvmField
        val KEYWORD_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_KEYWORD", DefaultLanguageHighlighterColors.KEYWORD)
        private val KEYWORD_SET = TokenSet.create(
            raft.war.language.angelscript.psi.AngelScriptTypes.ABSTRACT,
            raft.war.language.angelscript.psi.AngelScriptTypes.ARRAY,
            raft.war.language.angelscript.psi.AngelScriptTypes.AUTO,
            raft.war.language.angelscript.psi.AngelScriptTypes.BREAK,
            raft.war.language.angelscript.psi.AngelScriptTypes.CASE,
            raft.war.language.angelscript.psi.AngelScriptTypes.CONST,
            raft.war.language.angelscript.psi.AngelScriptTypes.CLASSS,
            raft.war.language.angelscript.psi.AngelScriptTypes.DEFAULT,
            raft.war.language.angelscript.psi.AngelScriptTypes.DO,
            raft.war.language.angelscript.psi.AngelScriptTypes.ELSE,
            raft.war.language.angelscript.psi.AngelScriptTypes.ENUM,
            raft.war.language.angelscript.psi.AngelScriptTypes.EXTERNAL,
            raft.war.language.angelscript.psi.AngelScriptTypes.EXPLICIT,
            raft.war.language.angelscript.psi.AngelScriptTypes.FINAL,
            raft.war.language.angelscript.psi.AngelScriptTypes.FOR,
            raft.war.language.angelscript.psi.AngelScriptTypes.FUNCDEF,
            raft.war.language.angelscript.psi.AngelScriptTypes.FUNCTION,
            raft.war.language.angelscript.psi.AngelScriptTypes.GET,
            raft.war.language.angelscript.psi.AngelScriptTypes.IF,
            raft.war.language.angelscript.psi.AngelScriptTypes.INCLUDE,
            raft.war.language.angelscript.psi.AngelScriptTypes.IN,
            raft.war.language.angelscript.psi.AngelScriptTypes.INOUT,
            raft.war.language.angelscript.psi.AngelScriptTypes.NAMESPACE,
            raft.war.language.angelscript.psi.AngelScriptTypes.NULL,
            raft.war.language.angelscript.psi.AngelScriptTypes.NIL,
            raft.war.language.angelscript.psi.AngelScriptTypes.OVERRIDE,
            raft.war.language.angelscript.psi.AngelScriptTypes.OUT,
            raft.war.language.angelscript.psi.AngelScriptTypes.PRIVATE,
            raft.war.language.angelscript.psi.AngelScriptTypes.PROPERTY,
            raft.war.language.angelscript.psi.AngelScriptTypes.PROTECTED,
            raft.war.language.angelscript.psi.AngelScriptTypes.RETURN,
            raft.war.language.angelscript.psi.AngelScriptTypes.SET,
            raft.war.language.angelscript.psi.AngelScriptTypes.SHARED,
            raft.war.language.angelscript.psi.AngelScriptTypes.STATIC,
            raft.war.language.angelscript.psi.AngelScriptTypes.SWITCH,
            raft.war.language.angelscript.psi.AngelScriptTypes.WHILE,
            raft.war.language.angelscript.psi.AngelScriptTypes.TRUE,
            raft.war.language.angelscript.psi.AngelScriptTypes.FALSE
        )

        @JvmField
        val NUMBER_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_NUMBER", DefaultLanguageHighlighterColors.NUMBER)
        private val NUMBER_SET = TokenSet.create(
            raft.war.language.angelscript.psi.AngelScriptTypes.RAWVAL,
            raft.war.language.angelscript.psi.AngelScriptTypes.INTVAL,
            raft.war.language.angelscript.psi.AngelScriptTypes.REALVAL,
            raft.war.language.angelscript.psi.AngelScriptTypes.HEXVAL
        )

        @JvmField
        val PARENTHESES_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_PARENTHESES",
            DefaultLanguageHighlighterColors.PARENTHESES
        )
        private val PARENTHESES_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.LPAREN, raft.war.language.angelscript.psi.AngelScriptTypes.RPAREN)

        @JvmField
        val BRACES_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_BRACES", DefaultLanguageHighlighterColors.BRACES)
        private val BRACES_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.LBRACE, raft.war.language.angelscript.psi.AngelScriptTypes.RBRACE)

        @JvmField
        val BRACKETS_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_BRACKETS", DefaultLanguageHighlighterColors.BRACKETS)
        private val BRACKETS_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.LBRACK, raft.war.language.angelscript.psi.AngelScriptTypes.RBRACK)

        @JvmField
        val COMMA_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_COMMA", DefaultLanguageHighlighterColors.COMMA)
        private val COMMA_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.COMMA)

        @JvmField
        val SEMICOLON_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_SEMICOLON",
            DefaultLanguageHighlighterColors.SEMICOLON
        )
        private val SEMICOLON_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.SEMI)

        @JvmField
        val DOT_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_DOT", DefaultLanguageHighlighterColors.DOT)
        private val DOT_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.DOT)

        @JvmField
        val OPERATION_SIGN_KEY: TextAttributesKey = TextAttributesKey.createTextAttributesKey(
            "ANGELSCRIPT_OPERATION_SIGN",
            DefaultLanguageHighlighterColors.OPERATION_SIGN
        )
        private val OPERATION_SIGN_SET = TokenSet.create(
            raft.war.language.angelscript.psi.AngelScriptTypes.COLON_COLON,
            raft.war.language.angelscript.psi.AngelScriptTypes.PLUS_PLUS,
            raft.war.language.angelscript.psi.AngelScriptTypes.MINUS_MINUS,
            raft.war.language.angelscript.psi.AngelScriptTypes.TILDE,
            raft.war.language.angelscript.psi.AngelScriptTypes.EXCL,
            raft.war.language.angelscript.psi.AngelScriptTypes.NOT,
            raft.war.language.angelscript.psi.AngelScriptTypes.MINUS,
            raft.war.language.angelscript.psi.AngelScriptTypes.PLUS,
            raft.war.language.angelscript.psi.AngelScriptTypes.AT,
            raft.war.language.angelscript.psi.AngelScriptTypes.CAST,
            raft.war.language.angelscript.psi.AngelScriptTypes.MUL_MUL,
            raft.war.language.angelscript.psi.AngelScriptTypes.MUL,
            raft.war.language.angelscript.psi.AngelScriptTypes.DIV,
            raft.war.language.angelscript.psi.AngelScriptTypes.PERCENT,
            raft.war.language.angelscript.psi.AngelScriptTypes.LT_LT,
            raft.war.language.angelscript.psi.AngelScriptTypes.GT_GT,
            raft.war.language.angelscript.psi.AngelScriptTypes.GT_GT_GT,
            raft.war.language.angelscript.psi.AngelScriptTypes.LT,
            raft.war.language.angelscript.psi.AngelScriptTypes.GT,
            raft.war.language.angelscript.psi.AngelScriptTypes.LT_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.GT_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.EQ_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.NEQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.CAR_CAR,
            raft.war.language.angelscript.psi.AngelScriptTypes.XOR,
            raft.war.language.angelscript.psi.AngelScriptTypes.IS,
            raft.war.language.angelscript.psi.AngelScriptTypes.NIS,
            raft.war.language.angelscript.psi.AngelScriptTypes.AMP,
            raft.war.language.angelscript.psi.AngelScriptTypes.CAR,
            raft.war.language.angelscript.psi.AngelScriptTypes.VBAR,
            raft.war.language.angelscript.psi.AngelScriptTypes.AMP_AMP,
            raft.war.language.angelscript.psi.AngelScriptTypes.AND,
            raft.war.language.angelscript.psi.AngelScriptTypes.VBAR_VBAR,
            raft.war.language.angelscript.psi.AngelScriptTypes.OR,
            raft.war.language.angelscript.psi.AngelScriptTypes.QUEST,
            raft.war.language.angelscript.psi.AngelScriptTypes.COLON,
            raft.war.language.angelscript.psi.AngelScriptTypes.EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.MUL_MUL_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.MUL_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.DIV_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.PERCENT_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.PLUS_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.MINUS_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.LT_LT_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.GT_GT_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.AMP_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.CAR_EQ,
            raft.war.language.angelscript.psi.AngelScriptTypes.VBAR_EQ
        )

        @JvmField
        val STRING_KEY: TextAttributesKey =
            TextAttributesKey.createTextAttributesKey("ANGELSCRIPT_STRING", DefaultLanguageHighlighterColors.STRING)
        private val STRING_SET = TokenSet.create(raft.war.language.angelscript.psi.AngelScriptTypes.STRING_ONE, raft.war.language.angelscript.psi.AngelScriptTypes.STRING_THREE)

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
            raft.war.language.angelscript.psi.AngelScriptTypes.ARRAY,
            raft.war.language.angelscript.psi.AngelScriptTypes.BOOL,
            raft.war.language.angelscript.psi.AngelScriptTypes.CODE,
            raft.war.language.angelscript.psi.AngelScriptTypes.DOUBLE,
            raft.war.language.angelscript.psi.AngelScriptTypes.FLOAT,
            raft.war.language.angelscript.psi.AngelScriptTypes.HANDLE,
            raft.war.language.angelscript.psi.AngelScriptTypes.INT,
            raft.war.language.angelscript.psi.AngelScriptTypes.INT8,
            raft.war.language.angelscript.psi.AngelScriptTypes.INT16,
            raft.war.language.angelscript.psi.AngelScriptTypes.INT32,
            raft.war.language.angelscript.psi.AngelScriptTypes.INT64,
            raft.war.language.angelscript.psi.AngelScriptTypes.STRING,
            raft.war.language.angelscript.psi.AngelScriptTypes.UINT,
            raft.war.language.angelscript.psi.AngelScriptTypes.UINT16,
            raft.war.language.angelscript.psi.AngelScriptTypes.UINT32,
            raft.war.language.angelscript.psi.AngelScriptTypes.UINT64,
            raft.war.language.angelscript.psi.AngelScriptTypes.VOID
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
