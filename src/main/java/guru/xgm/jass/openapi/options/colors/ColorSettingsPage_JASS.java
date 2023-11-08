package guru.xgm.jass.openapi.options.colors;

import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighter;
import com.intellij.openapi.options.colors.AttributesDescriptor;
import com.intellij.openapi.options.colors.ColorDescriptor;
import com.intellij.openapi.options.colors.ColorSettingsPage;
import guru.xgm.jass.openapi.util.Icons_JASS;
import guru.xgm.jass.openapi.fileTypes.SyntaxHighlighterBase_JASS;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.util.Map;

final class ColorSettingsPage_JASS implements ColorSettingsPage {

    private static final AttributesDescriptor[] DESCRIPTORS = new AttributesDescriptor[]{
            new AttributesDescriptor("Key", SyntaxHighlighterBase_JASS.KEY),
            new AttributesDescriptor("Separator", SyntaxHighlighterBase_JASS.SEPARATOR),
            new AttributesDescriptor("Value", SyntaxHighlighterBase_JASS.VALUE),
            new AttributesDescriptor("Bad value", SyntaxHighlighterBase_JASS.BAD_CHARACTER)
    };

    @Override
    public @NotNull Icon getIcon() {
        return Icons_JASS.FILE;
    }

    @NotNull
    @Override
    public SyntaxHighlighter getHighlighter() {
        return new SyntaxHighlighterBase_JASS();
    }

    @NotNull
    @Override
    public String getDemoText() {
        return """
                # You are reading the ".properties" entry.
                ! The exclamation mark can also mark text as comments.
                website = https://en.wikipedia.org/
                language = English
                # The backslash below tells the application to continue reading
                # the value onto the next line.
                message = Welcome to \\
                          Wikipedia!
                # Add spaces to the key
                key\\ with\\ spaces = This is the value that could be looked up with the key "key with spaces".
                # Unicode
                tab : \\u0009""";
    }

    @Nullable
    @Override
    public Map<String, TextAttributesKey> getAdditionalHighlightingTagToDescriptorMap() {
        return null;
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
        return "JASS";
    }

}
