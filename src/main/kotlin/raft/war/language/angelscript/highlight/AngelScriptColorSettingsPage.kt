@file:Suppress("DialogTitleCapitalization")

package raft.war.language.angelscript.highlight

import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.fileTypes.SyntaxHighlighter
import com.intellij.openapi.options.OptionsBundle
import com.intellij.openapi.options.colors.AttributesDescriptor
import com.intellij.openapi.options.colors.ColorDescriptor
import com.intellij.openapi.options.colors.ColorSettingsPage
import raft.war.language.angelscript.icons.AngelScriptIcons
import raft.war.language.angelscript.AngelScriptLanguage
import javax.swing.Icon

internal class AngelScriptColorSettingsPage : ColorSettingsPage {
    override fun getIcon(): Icon = AngelScriptIcons.FILE

    override fun getHighlighter(): SyntaxHighlighter = AngelScriptSyntaxHighlighterBase()

    override fun getAttributeDescriptors(): Array<AttributesDescriptor> = arrayOf(
        AttributesDescriptor(
            "Functions//User",
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_FUN_USER
        ),

        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.bad.character"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_BAD_CHARACTER
        ),

        AttributesDescriptor("Injector", AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_TYPE_NAME),

        AttributesDescriptor("Type", AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_TYPE_NAME),

        AttributesDescriptor(
            OptionsBundle.messagePointer("options.language.defaults.line.comment"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_LINE_COMMENT
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.language.defaults.block.comment"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_BLOCK_COMMENT
        ),

        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.keyword"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_KEYWORD
        ),

        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.number"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_NUMBER
        ),

        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.parentheses"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_PARENTHESES
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.braces"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_BRACES
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.brackets"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_BRACKETS
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.comma"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_COMMA
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.semicolon"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_SEMICOLON
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.dot"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_DOT
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.operator.sign"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_OPERATION_SIGN
        ),

        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.string"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_STRING
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.valid.escape.in.string"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_VALID_STRING_ESCAPE
        ),
        AttributesDescriptor(
            OptionsBundle.messagePointer("options.java.attribute.descriptor.invalid.escape.in.string"),
            AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_INVALID_STRING_ESCAPE
        ),
    )

    override fun getColorDescriptors(): Array<ColorDescriptor> = ColorDescriptor.EMPTY_ARRAY

    override fun getDisplayName(): String = AngelScriptLanguage.NAME

    override fun getDemoText(): String {
        return """
                <BC>${'$'}</BC>
                // line comment
                /*
                block comment
                */
                //${'$'}jass native DestroyGroup takes group whichGroup returns nothing
                <TN>void</TN> d(){
                    if (true){
                        <TN>int</TN> i = 2 * 0xDEADBEAF + '!@#${'$'}%^&*' - a.i[2];
                        <TN>string</TN> s = "some<VSE>\
                        </VSE>string<ISE>\?</ISE>";
                    }
                }
                
                """.trimIndent()
    }

    override fun getAdditionalHighlightingTagToDescriptorMap(): HashMap<String, TextAttributesKey?> =
        object : HashMap<String, TextAttributesKey?>() {
            init {
                put("BC", AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_BAD_CHARACTER)
                put("TN", AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_TYPE_NAME)
                put("VSE", AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_VALID_STRING_ESCAPE)
                put("ISE", AngelScriptSyntaxHighlighterBase.ANGELSCRIPT_INVALID_STRING_ESCAPE)
            }
        }

}


