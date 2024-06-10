package raft.war.language.jass.openapi.fileTypes

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.editor.colors.TextAttributesKey.*
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import raft.war.language.jass.lexer.JassFlexAdapter
import raft.war.language.jass.psi.JassTypes.*
import java.util.*

class JassSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getHighlightingLexer(): Lexer = JassFlexAdapter()

    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])

    companion object {
        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        val JASS_ID: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_ID.name,
            DefaultLanguageHighlighterColors.IDENTIFIER
        )

        val JASS_KEYWORD: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_KEYWORD.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        val JASS_TYPE_NAME: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_TYPE_NAME.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        val JASS_LINE_COMMENT: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_LINE_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        val JASS_BAD_CHARACTER: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_BAD_CHARACTER.name,
            HighlighterColors.BAD_CHARACTER
        )

        private val JASS_COMMA: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_COMMA.name,
            DefaultLanguageHighlighterColors.COMMA
        )

        private val JASS_NUMBER: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_NUMBER.name,
            DefaultLanguageHighlighterColors.NUMBER
        )

        private val JASS_STRING: TextAttributesKey = createTextAttributesKey(
            Companion::JASS_STRING.name,
            DefaultLanguageHighlighterColors.STRING
        )

        init {
            fillMap(ATTRIBUTES, TokenSet.create(TokenType.BAD_CHARACTER), JASS_BAD_CHARACTER)
            fillMap(ATTRIBUTES, TokenSet.create(ID), JASS_ID)
            fillMap(ATTRIBUTES, TokenSet.create(LINE_COMMENT), JASS_LINE_COMMENT)
            fillMap(ATTRIBUTES, TokenSet.create(COMMA), JASS_COMMA)
            fillMap(ATTRIBUTES, TokenSet.create(STRVAL), JASS_STRING)
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    INTVAL,
                    REALVAL,
                    RAWVAL,
                    HEXVAL
                ), JASS_NUMBER
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    NOTHING,
                    TYPE_NAME
                ), JASS_TYPE_NAME
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    NOT,
                    AND,
                    ARRAY,
                    CALL,
                    CONSTANT,
                    DEBUG,
                    ELSE,
                    ELSEIF,
                    ENDGLOBALS,
                    ENDLOOP,
                    ENDIF,
                    EXTENDS,
                    EXITWHEN,
                    FALSE,
                    GLOBALS,
                    IF,
                    LOCAL,
                    LOOP,
                    NATIVE,
                    NULL,
                    OR,
                    RETURN,
                    RETURNS,
                    SET,
                    TAKES,
                    THEN,
                    TRUE,
                    TYPE,
                    FUNCTION,
                    ENDFUNCTION
                ), JASS_KEYWORD
            )
        }
    }
}
