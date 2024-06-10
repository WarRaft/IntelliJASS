package raft.war.language.zinc.openapi.fileTypes

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.editor.colors.TextAttributesKey.*
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import raft.war.language.zinc.lexer.ZincFlexAdapter
import raft.war.language.zinc.psi.ZincTypes.*
import java.util.*

class ZincSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getHighlightingLexer(): Lexer = ZincFlexAdapter()

    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])

    companion object {
        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        private val ZINC_BAD_CHARACTER: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_BAD_CHARACTER.name,
            HighlighterColors.BAD_CHARACTER
        )

        private val ZINC_ID: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_ID.name,
            DefaultLanguageHighlighterColors.IDENTIFIER
        )

        private val ZINC_KEYWORD: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_KEYWORD.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        val ZINC_TYPE_NAME: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_TYPE_NAME.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        private val ZINC_LINE_COMMENT: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_LINE_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        private val ZINC_COMMA: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_COMMA.name,
            DefaultLanguageHighlighterColors.COMMA
        )

        private val ZINC_NUMBER: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_NUMBER.name,
            DefaultLanguageHighlighterColors.NUMBER
        )

        private val ZINC_STRING: TextAttributesKey = createTextAttributesKey(
            Companion::ZINC_STRING.name,
            DefaultLanguageHighlighterColors.STRING
        )

        init {
            fillMap(ATTRIBUTES, TokenSet.create(TokenType.BAD_CHARACTER), ZINC_BAD_CHARACTER)
            fillMap(ATTRIBUTES, TokenSet.create(ID), ZINC_ID)
            fillMap(ATTRIBUTES, TokenSet.create(COMMA), ZINC_COMMA)
            fillMap(ATTRIBUTES, TokenSet.create(STRVAL), ZINC_STRING)
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    INTVAL,
                    REALVAL,
                    RAWVAL,
                    HEXVAL
                ), ZINC_NUMBER
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    LINE_COMMENT,
                    BLOCK_COMMENT
                ), ZINC_LINE_COMMENT
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    NOTHING,
                    TYPE_NAME
                ), ZINC_TYPE_NAME
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    BREAK,
                    CONSTANT,
                    DO,
                    ELSE,
                    FALSE,
                    FOR,
                    FUNCTION,
                    IF,
                    LIBRARY,
                    METHOD,
                    NULL,
                    OPTIONAL,
                    PRIVATE,
                    PUBLIC,
                    RETURN,
                    REQUIRES,
                    STATIC,
                    STRUCT,
                    TRUE,
                    WHILE
                ), ZINC_KEYWORD
            )
        }
    }
}
