package guru.xgm.jass.openapi.options.colors;

import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighter;
import com.intellij.openapi.options.colors.AttributesDescriptor;
import com.intellij.openapi.options.colors.ColorDescriptor;
import com.intellij.openapi.options.colors.ColorSettingsPage;
import guru.xgm.jass.icons.JassIcons;
import guru.xgm.jass.openapi.fileTypes.SyntaxHighlighterBaseJASS;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import java.util.HashMap;
import java.util.Map;

final class ColorSettingsPageJASS implements ColorSettingsPage {

    private static final AttributesDescriptor[] DESCRIPTORS = new AttributesDescriptor[]{
            new AttributesDescriptor("Identifier", SyntaxHighlighterBaseJASS.ID_KEY),
            new AttributesDescriptor("Type", SyntaxHighlighterBaseJASS.TYPE_NAME_KEY),
            new AttributesDescriptor("Keyword", SyntaxHighlighterBaseJASS.KEYWORD_KEY),
            new AttributesDescriptor("Comment", SyntaxHighlighterBaseJASS.LINE_COMMENT_KEY),
            new AttributesDescriptor("Bad character", SyntaxHighlighterBaseJASS.BAD_CHARACTER_KEY),
    };

    @Override
    public @NotNull Icon getIcon() {
        return JassIcons.FILE;
    }

    @NotNull
    @Override
    public SyntaxHighlighter getHighlighter() {
        return new SyntaxHighlighterBaseJASS();
    }

    @NotNull
    @Override
    public String getDemoText() {
        return """
                $ // bad character
                type <TYPE_NAME>agent</TYPE_NAME> extends <TYPE_NAME>handle</TYPE_NAME>
                """;
    }

    @NonNls
    private static final Map<String, TextAttributesKey> ourTags = new HashMap<>() {{
        put("TYPE_NAME", SyntaxHighlighterBaseJASS.TYPE_NAME_KEY);
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
        return "JASS";
    }

}
