package raft.war.language.angelscript.highlight

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import raft.war.language.angelscript.lexer.AngelScriptFlexAdapter
import raft.war.language.angelscript.psi.AngelScriptTypes.*

class AngelScriptSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])
    override fun getHighlightingLexer(): Lexer = AngelScriptFlexAdapter()

    companion object {

        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        val ANGELSCRIPT_FUN_USER: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_FUN_USER.name,
            DefaultLanguageHighlighterColors.IDENTIFIER
        )

        val ANGELSCRIPT_INJECTOR: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_INJECTOR.name, HighlighterColors.BAD_CHARACTER)

        val ANGELSCRIPT_BAD_CHARACTER: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_BAD_CHARACTER.name, HighlighterColors.BAD_CHARACTER)

        private val ANGELSCRIPT_ID: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_ID.name, DefaultLanguageHighlighterColors.IDENTIFIER)

        val ANGELSCRIPT_LINE_COMMENT: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_LINE_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        val ANGELSCRIPT_BLOCK_COMMENT: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_BLOCK_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        val ANGELSCRIPT_KEYWORD: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_KEYWORD.name, DefaultLanguageHighlighterColors.KEYWORD)

        val ANGELSCRIPT_NUMBER: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_NUMBER.name, DefaultLanguageHighlighterColors.NUMBER)

        val ANGELSCRIPT_PARENTHESES: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_PARENTHESES.name,
            DefaultLanguageHighlighterColors.PARENTHESES
        )

        val ANGELSCRIPT_BRACES: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_BRACES.name, DefaultLanguageHighlighterColors.BRACES)

        val ANGELSCRIPT_BRACKETS: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_BRACKETS.name, DefaultLanguageHighlighterColors.BRACKETS)

        val ANGELSCRIPT_COMMA: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_COMMA.name, DefaultLanguageHighlighterColors.COMMA)

        val ANGELSCRIPT_SEMICOLON: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_SEMICOLON.name,
            DefaultLanguageHighlighterColors.SEMICOLON
        )

        val ANGELSCRIPT_DOT: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_DOT.name, DefaultLanguageHighlighterColors.DOT)

        val ANGELSCRIPT_OPERATION_SIGN: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_OPERATION_SIGN.name,
            DefaultLanguageHighlighterColors.OPERATION_SIGN
        )

        val ANGELSCRIPT_STRING: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_STRING.name, DefaultLanguageHighlighterColors.STRING)

        val ANGELSCRIPT_VALID_STRING_ESCAPE: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_VALID_STRING_ESCAPE.name,
            DefaultLanguageHighlighterColors.VALID_STRING_ESCAPE
        )

        val ANGELSCRIPT_INVALID_STRING_ESCAPE: TextAttributesKey = createTextAttributesKey(
            Companion::ANGELSCRIPT_INVALID_STRING_ESCAPE.name,
            DefaultLanguageHighlighterColors.INVALID_STRING_ESCAPE
        )

        val ANGELSCRIPT_TYPE_NAME: TextAttributesKey =
            createTextAttributesKey(Companion::ANGELSCRIPT_TYPE_NAME.name, DefaultLanguageHighlighterColors.KEYWORD)

        init {
            fillMap(ATTRIBUTES, TokenSet.create(TokenType.BAD_CHARACTER), ANGELSCRIPT_BAD_CHARACTER)
            fillMap(ATTRIBUTES, TokenSet.create(ID), ANGELSCRIPT_ID)
            fillMap(ATTRIBUTES, TokenSet.create(LINE_COMMENT), ANGELSCRIPT_LINE_COMMENT)
            fillMap(ATTRIBUTES, TokenSet.create(BLOCK_COMMENT), ANGELSCRIPT_BLOCK_COMMENT)
            fillMap(ATTRIBUTES, TokenSet.create(LPAREN, RPAREN), ANGELSCRIPT_PARENTHESES)
            fillMap(ATTRIBUTES, TokenSet.create(LBRACE, RBRACE), ANGELSCRIPT_BRACES)
            fillMap(ATTRIBUTES, TokenSet.create(LBRACK, RBRACK), ANGELSCRIPT_BRACKETS)
            fillMap(ATTRIBUTES, TokenSet.create(COMMA), ANGELSCRIPT_COMMA)
            fillMap(ATTRIBUTES, TokenSet.create(SEMI), ANGELSCRIPT_SEMICOLON)
            fillMap(ATTRIBUTES, TokenSet.create(DOT), ANGELSCRIPT_DOT)
            fillMap(ATTRIBUTES, TokenSet.create(STRING_ONE, STRING_THREE), ANGELSCRIPT_STRING)
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    COLON_COLON,
                    PLUS_PLUS,
                    MINUS_MINUS,
                    TILDE,
                    EXCL,
                    NOT,
                    MINUS,
                    PLUS,
                    AT,
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
                ), ANGELSCRIPT_OPERATION_SIGN
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    RAWVAL,
                    INTVAL,
                    REALVAL,
                    HEXVAL
                ), ANGELSCRIPT_NUMBER
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
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
                ), ANGELSCRIPT_TYPE_NAME
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    ABSTRACT,
                    ARRAY,
                    AUTO,
                    BREAK,
                    CASE,
                    CAST,
                    CONST,
                    CONTINUE,
                    CLAS,
                    DEFAULT,
                    DELETE,
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
                    INTERFACE,
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
                ), ANGELSCRIPT_KEYWORD
            )
        }
    }
}
