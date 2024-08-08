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
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.string"),
            JassSyntaxHighlighterBase.JASS_STRING
        ),

        AttributesDescriptor(
            "Functions//Native",
            JassSyntaxHighlighterBase.JASS_FUN_NATIVE
        ),
        AttributesDescriptor(
            "Functions//Blizzard",
            JassSyntaxHighlighterBase.JASS_FUN_BLIZZARD
        ),
        AttributesDescriptor(
            "Functions//User",
            JassSyntaxHighlighterBase.JASS_FUN_USER
        ),

        )

    override fun getColorDescriptors(): Array<ColorDescriptor> = ColorDescriptor.EMPTY_ARRAY

    override fun getDisplayName(): String = JassLanguage.NAME

    override fun getDemoText(): String = """
            ${'$'} // bad character
            type <TN>agent</TN> extends <TN>handle</TN>
            
            native <FN>UnitAlive</FN> takes unit id returns boolean 
            
            function <FU>myFunc</FU> takes nothing returns nothing
                local <TN>real</TN> myInt = 1 * 2. + 'cUnt' 
            endfunction
            
            function <FB>SinBJ</FB> takes real degrees returns real
                return <FN>Sin</FN>(degrees * bj_DEGTORAD)
            endfunction
            """.trimIndent()

    override fun getAdditionalHighlightingTagToDescriptorMap(): HashMap<String, TextAttributesKey?> =
        object : HashMap<String, TextAttributesKey?>() {
            init {
                put("TN", JassSyntaxHighlighterBase.JASS_TYPE_NAME)
                put("FN", JassSyntaxHighlighterBase.JASS_FUN_NATIVE)
                put("FB", JassSyntaxHighlighterBase.JASS_FUN_BLIZZARD)
                put("FU", JassSyntaxHighlighterBase.JASS_FUN_USER)
            }
        }
}

