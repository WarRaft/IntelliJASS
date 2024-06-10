package raft.war.language.jass.openapi.colors

import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighter
import com.intellij.openapi.options.colors.AttributesDescriptor
import com.intellij.openapi.options.colors.ColorDescriptor
import com.intellij.openapi.options.colors.ColorSettingsPage
import raft.war.language.jass.icons.JassIcons.FILE
import raft.war.language.jass.lang.JassLanguage
import raft.war.language.jass.openapi.fileTypes.JassSyntaxHighlighterBase
import javax.swing.Icon

internal class JassColorSettingsPage : ColorSettingsPage {
    override fun getIcon(): Icon = FILE

    override fun getHighlighter(): SyntaxHighlighter = JassSyntaxHighlighterBase()

    override fun getDemoText(): String = """
            ${'$'} // bad character
            type <TYPE_NAME>agent</TYPE_NAME> extends <TYPE_NAME>handle</TYPE_NAME>
            
            """.trimIndent()

    override fun getAdditionalHighlightingTagToDescriptorMap(): HashMap<String, TextAttributesKey?> = ourTags

    override fun getAttributeDescriptors(): Array<AttributesDescriptor> = DESCRIPTORS

    override fun getColorDescriptors(): Array<ColorDescriptor> = ColorDescriptor.EMPTY_ARRAY

    override fun getDisplayName(): String = JassLanguage.NAME
}

private val DESCRIPTORS = arrayOf(
    AttributesDescriptor("Identifier", JassSyntaxHighlighterBase.JASS_ID),
    AttributesDescriptor("Type", JassSyntaxHighlighterBase.JASS_TYPE_NAME),
    AttributesDescriptor("Keyword", JassSyntaxHighlighterBase.JASS_KEYWORD),
    AttributesDescriptor("Comment", JassSyntaxHighlighterBase.JASS_LINE_COMMENT),
    AttributesDescriptor("Bad character", JassSyntaxHighlighterBase.JASS_BAD_CHARACTER),
)
private val ourTags: HashMap<String, TextAttributesKey?> =
    object : HashMap<String, TextAttributesKey?>() {
        init {
            put("TYPE_NAME", JassSyntaxHighlighterBase.JASS_TYPE_NAME)
        }
    }
