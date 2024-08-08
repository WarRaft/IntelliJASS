package raft.war.language.jass.highlighter

import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighter
import com.intellij.openapi.options.OptionsBundle
import com.intellij.openapi.options.colors.AttributesDescriptor
import com.intellij.openapi.options.colors.ColorDescriptor
import com.intellij.openapi.options.colors.ColorSettingsPage
import raft.war.language.jass.JassIcons.FILE
import raft.war.language.jass.JassLanguage
import javax.swing.Icon

/*
Юзер функции - жёлтые.
Нативки - розовые/фиолетовые.
БЖ - красные.
 */

internal class JassColorSettingsPage : ColorSettingsPage {
    override fun getIcon(): Icon = FILE

    override fun getHighlighter(): SyntaxHighlighter = JassSyntaxHighlighterBase()

    override fun getAttributeDescriptors(): Array<AttributesDescriptor> = arrayOf(
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.language.defaults.identifier"),
            JassSyntaxHighlighterBase.JASS_ID
        ),
        AttributesDescriptor("Type", JassSyntaxHighlighterBase.JASS_TYPE_NAME),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.keyword"),
            JassSyntaxHighlighterBase.JASS_KEYWORD
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.line.comment"),
            JassSyntaxHighlighterBase.JASS_LINE_COMMENT
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.bad.character"),
            JassSyntaxHighlighterBase.JASS_BAD_CHARACTER
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.number"),
            JassSyntaxHighlighterBase.JASS_NUMBER
        ),
    )

    override fun getColorDescriptors(): Array<ColorDescriptor> = ColorDescriptor.EMPTY_ARRAY

    override fun getDisplayName(): String = JassLanguage.NAME

    override fun getDemoText(): String = """
            ${'$'} // bad character
            type <TYPE_NAME>agent</TYPE_NAME> extends <TYPE_NAME>handle</TYPE_NAME>
            function myFunc takes nothing returns nothing
                local <TYPE_NAME>real</TYPE_NAME> myInt = 1 * 2. + 'cUnt' 
            endfunction
            """.trimIndent()

    override fun getAdditionalHighlightingTagToDescriptorMap(): HashMap<String, TextAttributesKey?> =
        object : HashMap<String, TextAttributesKey?>() {
            init {
                put("TYPE_NAME", JassSyntaxHighlighterBase.JASS_TYPE_NAME)
            }
        }
}

