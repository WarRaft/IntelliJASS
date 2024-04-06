package guru.xgm.language.angelscript.openapi.options.colors;

import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighter;
import com.intellij.openapi.options.colors.AttributesDescriptor;
import com.intellij.openapi.options.colors.ColorDescriptor;
import com.intellij.openapi.options.colors.ColorSettingsPage;
import guru.xgm.language.angelscript.icons.AngelScriptIcons;
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptSyntaxHighlighterBase;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import java.util.HashMap;
import java.util.Map;

import com.intellij.openapi.options.OptionsBundle;

import static guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptSyntaxHighlighterBase.*;

@SuppressWarnings("DialogTitleCapitalization")
final class AngelScriptColorSettingsPage implements ColorSettingsPage {

    private static final AttributesDescriptor[] DESCRIPTORS = new AttributesDescriptor[]{
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.bad.character"), BAD_CHARACTER_KEY),

            new AttributesDescriptor("Type", TYPE_NAME_KEY),

            new AttributesDescriptor(OptionsBundle.messagePointer("options.language.defaults.line.comment"), LINE_COMMENT_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.language.defaults.block.comment"), BLOCK_COMMENT_KEY),

            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.keyword"), KEYWORD_KEY),

            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.number"), NUMBER_KEY),

            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.parentheses"), PARENTHESES_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.braces"), BRACES_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.brackets"), BRACKETS_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.comma"), COMMA_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.semicolon"), SEMICOLON_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.dot"), DOT_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.operator.sign"), OPERATION_SIGN_KEY),

            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.string"), STRING_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.valid.escape.in.string"), VALID_STRING_ESCAPE_KEY),
            new AttributesDescriptor(OptionsBundle.messagePointer("options.java.attribute.descriptor.invalid.escape.in.string"), INVALID_STRING_ESCAPE_KEY),
    };

    @Override
    public @NotNull Icon getIcon() {
        return AngelScriptIcons.FILE;
    }

    @NotNull
    @Override
    public SyntaxHighlighter getHighlighter() {
        return new AngelScriptSyntaxHighlighterBase();
    }

    @NotNull
    @Override
    public String getDemoText() {
        return """
                <BAD_CHARACTER>$</BAD_CHARACTER>
                // line comment
                /*
                block comment
                */
                <TYPE_NAME>void</TYPE_NAME> d(){
                    if (true){
                        <TYPE_NAME>int</TYPE_NAME> i = 2 * 0xDEADBEAF + '!@#$%^&*' - a.i[2];
                        <TYPE_NAME>string</TYPE_NAME> s = "some<VALID_STRING_ESCAPE>\\n</VALID_STRING_ESCAPE>string<INVALID_STRING_ESCAPE>\\?</INVALID_STRING_ESCAPE>";
                    }
                }
                """;
    }

    @NonNls
    private static final Map<String, TextAttributesKey> ourTags = new HashMap<>() {{
        put("BAD_CHARACTER", BAD_CHARACTER_KEY);
        put("TYPE_NAME", TYPE_NAME_KEY);
        put("VALID_STRING_ESCAPE", VALID_STRING_ESCAPE_KEY);
        put("INVALID_STRING_ESCAPE", INVALID_STRING_ESCAPE_KEY);
    }};

    @Override
    public @NotNull Map<String, TextAttributesKey> getAdditionalHighlightingTagToDescriptorMap() {
        return ourTags;
    }

    @Override
    public AttributesDescriptor @NotNull [] getAttributeDescriptors() {
        return DESCRIPTORS;
    }

    @Override
    public ColorDescriptor @NotNull [] getColorDescriptors() {
        return ColorDescriptor.EMPTY_ARRAY;
    }

    @NotNull
    @Override
    public String getDisplayName() {
        return "AngelScript";
    }

}
