package guru.xgm.jass.openapi.fileTypes;

import guru.xgm.jass.lang.JassLanguage;
import guru.xgm.jass.icons.JassIcons;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class JassLanguageFileType extends LanguageFileType {

    public static final JassLanguageFileType INSTANCE = new JassLanguageFileType();

    private JassLanguageFileType() {
        super(JassLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "JASS File";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "JASS language file";
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
