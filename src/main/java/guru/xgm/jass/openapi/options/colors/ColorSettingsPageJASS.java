package guru.xgm.jass.openapi.options.colors;

import guru.xgm.jass.openapi.fileTypes.SyntaxHighlighterBaseJASS;
import guru.xgm.jass.icons.IconsJASS;

import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighter;
import com.intellij.openapi.options.colors.AttributesDescriptor;
import com.intellij.openapi.options.colors.ColorDescriptor;
import com.intellij.openapi.options.colors.ColorSettingsPage;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
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
        return IconsJASS.FILE;
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
                type anal extends sex // We will fuck you!
                Кто подставил кролика Роджера?
                """;
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
