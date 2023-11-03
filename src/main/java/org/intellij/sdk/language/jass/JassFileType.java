package org.intellij.sdk.language.jass;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class JassFileType extends LanguageFileType {

    public static final JassFileType INSTANCE = new JassFileType();

    private JassFileType() {
        super(JassLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "Jass File";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "Jass language file";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return "j";
    }

    @Override
    public @NotNull Icon getIcon() {
        return JassIcons.FILE;
    }
}
