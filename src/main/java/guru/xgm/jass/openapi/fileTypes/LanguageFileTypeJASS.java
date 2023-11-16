package guru.xgm.jass.openapi.fileTypes;

import guru.xgm.jass.lang.LanguageJASS;
import guru.xgm.jass.icons.IconsJASS;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class LanguageFileTypeJASS extends LanguageFileType {

    public static final LanguageFileTypeJASS INSTANCE = new LanguageFileTypeJASS();

    private LanguageFileTypeJASS() {
        super(LanguageJASS.INSTANCE);
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
        return IconsJASS.FILE;
    }
}
