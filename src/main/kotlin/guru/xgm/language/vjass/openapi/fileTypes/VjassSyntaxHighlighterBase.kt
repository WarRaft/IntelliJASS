package guru.xgm.language.vjass.openapi.fileTypes

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import guru.xgm.language.vjass.lexer.VjassFlexAdapter
import guru.xgm.language.vjass.psi.VjassTypes.*
import java.util.*

class VjassSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getHighlightingLexer(): Lexer = VjassFlexAdapter()

    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])

    companion object {
        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        private val VJASS_BAD_CHARACTER: TextAttributesKey = createTextAttributesKey(
            ::VJASS_BAD_CHARACTER.name,
            HighlighterColors.BAD_CHARACTER
        )

        private val VJASS_ID: TextAttributesKey = createTextAttributesKey(
            ::VJASS_ID.name,
            DefaultLanguageHighlighterColors.IDENTIFIER
        )

        private val VJASS_KEYWORD: TextAttributesKey = createTextAttributesKey(
            ::VJASS_KEYWORD.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        private val VJASS_TYPE_NAME: TextAttributesKey = createTextAttributesKey(
            ::VJASS_TYPE_NAME.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        private val VJASS_LINE_COMMENT: TextAttributesKey = createTextAttributesKey(
            ::VJASS_LINE_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        private val VJASS_COMMA: TextAttributesKey = createTextAttributesKey(
            ::VJASS_COMMA.name,
            DefaultLanguageHighlighterColors.COMMA
        )

        private val VJASS_NUMBER: TextAttributesKey = createTextAttributesKey(
            ::VJASS_NUMBER.name,
            DefaultLanguageHighlighterColors.NUMBER
        )

        private val VJASS_STRING: TextAttributesKey = createTextAttributesKey(
            ::VJASS_STRING.name,
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
                    CONSTANT,
                    FALSE,  // function
                    FUNCTION,
                    ENDFUNCTION,  // if
                    IF,
                    THEN,
                    ELSE,
                    ENDIF,  // loop
                    LOOP,
                    EXITWHEN,
                    ENDLOOP,  // globals
                    GLOBALS,
                    ENDGLOBALS,  // library
                    LIBRARY,
                    INITIALIZER,
                    REQUIRES,
                    NEEDS,
                    USES,
                    METHOD,
                    ENDLIBRARY,  //
                    NATIVE,
                    OPTIONAL,
                    PRIVATE,
                    PUBLIC,
                    RETURNS,
                    STATIC,
                    STRUCT,
                    TAKES,
                    TRUE
                ), VJASS_KEYWORD
            )
        }
    }
}
