package guru.xgm.language.wts.openapi.fileTypes

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import guru.xgm.language.wts.lexer.WtsFlexAdapter
import guru.xgm.language.wts.psi.WtsTypes.*

class WtsSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getHighlightingLexer(): Lexer = WtsFlexAdapter()

    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])

    companion object {
        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        private val WTS_BAD_CHARACTER: TextAttributesKey = createTextAttributesKey(
            ::WTS_BAD_CHARACTER.name,
            HighlighterColors.BAD_CHARACTER
        )

        private val WTS_KEYWORD: TextAttributesKey = createTextAttributesKey(
            ::WTS_KEYWORD.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        private val WTS_LINE_COMMENT: TextAttributesKey = createTextAttributesKey(
            ::WTS_LINE_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        private val WTS_NUMBER: TextAttributesKey = createTextAttributesKey(
            ::WTS_NUMBER.name,
            DefaultLanguageHighlighterColors.NUMBER
        )

        private val WTS_STRING: TextAttributesKey = createTextAttributesKey(
            ::WTS_STRING.name,
            DefaultLanguageHighlighterColors.STRING
        )

        init {
            fillMap(ATTRIBUTES, TokenSet.create(TokenType.BAD_CHARACTER), WTS_BAD_CHARACTER)
            fillMap(ATTRIBUTES, TokenSet.create(STRING), WTS_KEYWORD)
            fillMap(ATTRIBUTES, TokenSet.create(LINE_COMMENT), WTS_LINE_COMMENT)
            fillMap(ATTRIBUTES, TokenSet.create(ID), WTS_NUMBER)
            fillMap(ATTRIBUTES, TokenSet.create(VALUE), WTS_STRING)
        }
    }
}
