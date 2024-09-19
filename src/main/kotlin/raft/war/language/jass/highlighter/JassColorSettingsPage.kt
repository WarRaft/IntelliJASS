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

        // functions
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

        // variables
        AttributesDescriptor(
            "Variables//Local",
            JassSyntaxHighlighterBase.JASS_VAR_LOCAL
        ),
        AttributesDescriptor(
            "Variables//Global",
            JassSyntaxHighlighterBase.JASS_VAR_GLOBAL
        ),
        AttributesDescriptor(
            "Variables//Argument",
            JassSyntaxHighlighterBase.JASS_VAR_ARGUMENT
        ),

        )

    override fun getColorDescriptors(): Array<ColorDescriptor> = ColorDescriptor.EMPTY_ARRAY

    override fun getDisplayName(): String = JassLanguage.NAME

    override fun getDemoText(): String = """
            ${'$'} // bad character
            type <TN>agent</TN> extends <TN>handle</TN>
            
            globals
                constant <TN>string</TN> <VG>Decription</VG> = "|c00112233Color |n |r TRIGSTR_123"
            endglobals
            
            native <FN>UnitAlive</FN> takes <TN>unit</TN> <VA>id</VA> returns <TN>boolean</TN> 
            
            function <FU>Anal</FU> takes nothing returns nothing
                local <TN>real</TN> <VL>myInt</VL> = 1 * 2. + 'cUnt' 
            endfunction
            
            function <FB>SinBJ</FB> takes <TN>real</TN> <VA>degrees</VA> returns <TN>real</TN>
                return <FN>Sin</FN>(<VA>degrees</VA> * <VG>bj_DEGTORAD</VG>)
            endfunction
            """.trimIndent()

    override fun getAdditionalHighlightingTagToDescriptorMap(): HashMap<String, TextAttributesKey?> =
        object : HashMap<String, TextAttributesKey?>() {
            init {
                put("TN", JassSyntaxHighlighterBase.JASS_TYPE_NAME)
                put("FN", JassSyntaxHighlighterBase.JASS_FUN_NATIVE)
                put("FB", JassSyntaxHighlighterBase.JASS_FUN_BLIZZARD)
                put("FU", JassSyntaxHighlighterBase.JASS_FUN_USER)
                put("VL", JassSyntaxHighlighterBase.JASS_VAR_LOCAL)
                put("VG", JassSyntaxHighlighterBase.JASS_VAR_GLOBAL)
                put("VA", JassSyntaxHighlighterBase.JASS_VAR_ARGUMENT)
            }
        }
}

