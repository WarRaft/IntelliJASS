package guru.xgm.language.lni.openapi.fileTypes

import com.intellij.lexer.Lexer
import com.intellij.openapi.editor.DefaultLanguageHighlighterColors
import com.intellij.openapi.editor.HighlighterColors
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.editor.colors.TextAttributesKey.createTextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighterBase
import com.intellij.psi.TokenType
import com.intellij.psi.tree.IElementType
import com.intellij.psi.tree.TokenSet
import guru.xgm.language.lni.lexer.LniFlexAdapter
import guru.xgm.language.lni.psi.LniTypes.*

class LniSyntaxHighlighterBase : SyntaxHighlighterBase() {
    override fun getHighlightingLexer(): Lexer = LniFlexAdapter()

    override fun getTokenHighlights(tokenType: IElementType): Array<TextAttributesKey> = pack(ATTRIBUTES[tokenType])

    companion object {
        private val ATTRIBUTES: MutableMap<IElementType, TextAttributesKey> = HashMap()

        private val LNI_ID: TextAttributesKey = createTextAttributesKey(
            ::LNI_ID.name,
            DefaultLanguageHighlighterColors.KEYWORD
        )

        private val LNI_LINE_COMMENT: TextAttributesKey = createTextAttributesKey(
            ::LNI_LINE_COMMENT.name,
            DefaultLanguageHighlighterColors.LINE_COMMENT
        )

        private val LNI_BAD_CHARACTER: TextAttributesKey = createTextAttributesKey(
            ::LNI_BAD_CHARACTER.name,
            HighlighterColors.BAD_CHARACTER
        )

        private val LNI_NUMBER: TextAttributesKey = createTextAttributesKey(
            ::LNI_NUMBER.name,
            DefaultLanguageHighlighterColors.NUMBER
        )

        private val LNI_STRING: TextAttributesKey = createTextAttributesKey(
            ::LNI_STRING.name,
            DefaultLanguageHighlighterColors.STRING
        )

        init {
            fillMap(ATTRIBUTES, TokenSet.create(ID), LNI_ID)
            fillMap(ATTRIBUTES, TokenSet.create(LINE_COMMENT), LNI_LINE_COMMENT)
            fillMap(ATTRIBUTES, TokenSet.create(TokenType.BAD_CHARACTER), LNI_BAD_CHARACTER)
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    INTVAL,
                    REALVAL,
                    HEXVAL
                ), LNI_NUMBER
            )
            fillMap(
                ATTRIBUTES, TokenSet.create(
                    STRVAL,
                    STRVAL_MULT
                ), LNI_STRING
            )
        }
    }
}
