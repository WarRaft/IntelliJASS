package guru.xgm.language.jass.openapi.options.colors;

import com.intellij.openapi.editor.colors.TextAttributesKey;
import com.intellij.openapi.fileTypes.SyntaxHighlighter;
import com.intellij.openapi.options.colors.AttributesDescriptor;
import com.intellij.openapi.options.colors.ColorDescriptor;
import com.intellij.openapi.options.colors.ColorSettingsPage;
import guru.xgm.language.jass.icons.JassIcons;
import guru.xgm.language.jass.lang.JassLanguage;
import guru.xgm.language.jass.openapi.fileTypes.JassSyntaxHighlighterBase;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import java.util.HashMap;
import java.util.Map;

final class JassColorSettingsPage implements ColorSettingsPage {

    private static final AttributesDescriptor[] DESCRIPTORS = new AttributesDescriptor[]{
            new AttributesDescriptor("Identifier", JassSyntaxHighlighterBase.ID_KEY),
            new AttributesDescriptor("Type", JassSyntaxHighlighterBase.TYPE_NAME_KEY),
            new AttributesDescriptor("Keyword", JassSyntaxHighlighterBase.KEYWORD_KEY),
            new AttributesDescriptor("Comment", JassSyntaxHighlighterBase.LINE_COMMENT_KEY),
            new AttributesDescriptor("Bad character", JassSyntaxHighlighterBase.BAD_CHARACTER_KEY),
    };

    @Override
    public @NotNull Icon getIcon() {
        return JassIcons.FILE;
    }

    @NotNull
    @Override
    public SyntaxHighlighter getHighlighter() {
        return new JassSyntaxHighlighterBase();
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
        put("TYPE_NAME", JassSyntaxHighlighterBase.TYPE_NAME_KEY);
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
        return JassLanguage.NAME;
    }

}
