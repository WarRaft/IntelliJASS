@file:Suppress("DialogTitleCapitalization")

package raft.war.language.angelscript.openapi.options.colors

import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighter
import com.intellij.openapi.options.OptionsBundle
import com.intellij.openapi.options.colors.AttributesDescriptor
import com.intellij.openapi.options.colors.ColorDescriptor
import com.intellij.openapi.options.colors.ColorSettingsPage
import raft.war.language.angelscript.icons.AngelScriptIcons
import raft.war.language.angelscript.lang.AngelScriptLanguage
import raft.war.language.angelscript.openapi.fileTypes.AngelScriptSyntaxHighlighterBase
import javax.swing.Icon

internal class AngelScriptColorSettingsPage : ColorSettingsPage {
    override fun getIcon(): Icon = AngelScriptIcons.FILE

    override fun getHighlighter(): SyntaxHighlighter = AngelScriptSyntaxHighlighterBase()

    override fun getDemoText(): String {
        return """
                <BAD_CHARACTER>${'$'}</BAD_CHARACTER>
                // line comment
                /*
                block comment
                */
                //${'$'}jass native DestroyGroup takes group whichGroup returns nothing
                <TYPE_NAME>void</TYPE_NAME> d(){
                    if (true){
                        <TYPE_NAME>int</TYPE_NAME> i = 2 * 0xDEADBEAF + '!@#${'$'}%^&*' - a.i[2];
                        <TYPE_NAME>string</TYPE_NAME> s = "some<VALID_STRING_ESCAPE>\
                        </VALID_STRING_ESCAPE>string<INVALID_STRING_ESCAPE>\?</INVALID_STRING_ESCAPE>";
                    }
                }
                
                """.trimIndent()
    }

    override fun getAdditionalHighlightingTagToDescriptorMap(): HashMap<String, TextAttributesKey?> = ourTags

    override fun getAttributeDescriptors(): Array<AttributesDescriptor> = DESCRIPTORS

    override fun getColorDescriptors(): Array<ColorDescriptor> = ColorDescriptor.EMPTY_ARRAY

    override fun getDisplayName(): String = AngelScriptLanguage.NAME

}

private val DESCRIPTORS = arrayOf(
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.bad.character"),
        AngelScriptSyntaxHighlighterBase.BAD_CHARACTER_KEY
    ),

    AttributesDescriptor("Injector", AngelScriptSyntaxHighlighterBase.TYPE_NAME_KEY),

    AttributesDescriptor("Type", AngelScriptSyntaxHighlighterBase.TYPE_NAME_KEY),

    AttributesDescriptor(
        OptionsBundle.messagePointer("options.language.defaults.line.comment"),
        AngelScriptSyntaxHighlighterBase.LINE_COMMENT_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.language.defaults.block.comment"),
        AngelScriptSyntaxHighlighterBase.BLOCK_COMMENT_KEY
    ),

    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.keyword"),
        AngelScriptSyntaxHighlighterBase.KEYWORD_KEY
    ),

    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.number"),
        AngelScriptSyntaxHighlighterBase.NUMBER_KEY
    ),

    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.parentheses"),
        AngelScriptSyntaxHighlighterBase.PARENTHESES_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.braces"),
        AngelScriptSyntaxHighlighterBase.BRACES_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.brackets"),
        AngelScriptSyntaxHighlighterBase.BRACKETS_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.comma"),
        AngelScriptSyntaxHighlighterBase.COMMA_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.semicolon"),
        AngelScriptSyntaxHighlighterBase.SEMICOLON_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.dot"),
        AngelScriptSyntaxHighlighterBase.DOT_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.operator.sign"),
        AngelScriptSyntaxHighlighterBase.OPERATION_SIGN_KEY
    ),

    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.string"),
        AngelScriptSyntaxHighlighterBase.STRING_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.valid.escape.in.string"),
        AngelScriptSyntaxHighlighterBase.VALID_STRING_ESCAPE_KEY
    ),
    AttributesDescriptor(
        OptionsBundle.messagePointer("options.java.attribute.descriptor.invalid.escape.in.string"),
        AngelScriptSyntaxHighlighterBase.INVALID_STRING_ESCAPE_KEY
    ),
)
private val ourTags: HashMap<String, TextAttributesKey?> =
    object : HashMap<String, TextAttributesKey?>() {
        init {
            put("BAD_CHARACTER", AngelScriptSyntaxHighlighterBase.BAD_CHARACTER_KEY)
            put("TYPE_NAME", AngelScriptSyntaxHighlighterBase.TYPE_NAME_KEY)
            put("VALID_STRING_ESCAPE", AngelScriptSyntaxHighlighterBase.VALID_STRING_ESCAPE_KEY)
            put("INVALID_STRING_ESCAPE", AngelScriptSyntaxHighlighterBase.INVALID_STRING_ESCAPE_KEY)
        }
    }
