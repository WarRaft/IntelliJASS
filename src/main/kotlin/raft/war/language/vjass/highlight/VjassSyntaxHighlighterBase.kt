package raft.war.language.vjass.highlight

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import raft.war.language.vjass.VjassFlexAdapter
import raft.war.language.vjass.psi.VjassTypes.*
import java.util.*

class VjassSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getHighlightingLexer(): Lexer = VjassFlexAdapter()

    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])

    companion object {
        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        private val VJASS_BAD_CHARACTER: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_BAD_CHARACTER.name,
            HighlighterColors.BAD_CHARACTER
        )

        private val VJASS_ID: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_ID.name,
            DefaultLanguageHighlighterColors.IDENTIFIER
        )

        private val VJASS_KEYWORD: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_KEYWORD.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        private val VJASS_TYPE_NAME: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_TYPE_NAME.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        private val VJASS_LINE_COMMENT: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_LINE_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        private val VJASS_COMMA: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_COMMA.name,
            DefaultLanguageHighlighterColors.COMMA
        )

        private val VJASS_NUMBER: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_NUMBER.name,
            DefaultLanguageHighlighterColors.NUMBER
        )

        private val VJASS_STRING: TextAttributesKey = createTextAttributesKey(
            Companion::VJASS_STRING.name,
            DefaultLanguageHighlighterColors.STRING
        )

        init {
            fillMap(ATTRIBUTES, TokenSet.create(TokenType.BAD_CHARACTER), VJASS_BAD_CHARACTER)
            fillMap(ATTRIBUTES, TokenSet.create(ID), VJASS_ID)
            fillMap(ATTRIBUTES, TokenSet.create(COMMA), VJASS_COMMA)
            fillMap(ATTRIBUTES, TokenSet.create(STRVAL), VJASS_STRING)
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    INTVAL,
                    REALVAL,
                    RAWVAL,
                    HEXVAL
                ), VJASS_NUMBER
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    LINE_COMMENT,
                    BLOCK_COMMENT
                ), VJASS_LINE_COMMENT
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    NOTHING,
                    TYPE_NAME
                ), VJASS_TYPE_NAME
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    // var
                    CONSTANT,
                    SET,
                    TRUE,
                    FALSE,
                    ARRAY,
                    // function
                    NATIVE,
                    CALL,
                    FUNCTION,
                    ENDFUNCTION,
                    RETURN,
                    RETURNS,
                    TAKES,
                    // if
                    IF,
                    THEN,
                    ELSE,
                    ENDIF,
                    // loop
                    LOOP,
                    ENDLOOP,
                    EXITWHEN,
                    // globals
                    GLOBALS,
                    ENDGLOBALS,
                    // library
                    LIBRARY,
                    ENDLIBRARY,
                    SCOPE,
                    ENDSCOPE,
                    INITIALIZER,
                    OPTIONAL,
                    REQUIRES,
                    NEEDS,
                    USES,
                    ENDLIBRARY,
                    // struct
                    STRUCT,
                    ENDSTRUCT,
                    METHOD,
                    ENDMETHOD,
                    //
                    PRIVATE,
                    PUBLIC,
                    STATIC,
                ), VJASS_KEYWORD
            )
        }
    }
}
