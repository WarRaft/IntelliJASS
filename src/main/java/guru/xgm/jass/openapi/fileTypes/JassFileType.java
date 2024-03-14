package guru.xgm.jass.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.jass.icons.JassIcons;
import guru.xgm.jass.lang.JassLanguage;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class JassFileType extends LanguageFileType {

    public static final JassFileType INSTANCE = new JassFileType();

    public JassFileType() {
        super(JassLanguage.INSTANCE);
    }

    public static final String extension = "j";

    @NotNull
    @Override
    public String getName() {
        return "JASS";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "JASS language file";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return extension;
    }

    @Override
    public @NotNull Icon getIcon() {
        return JassIcons.FILE;
    }
}
