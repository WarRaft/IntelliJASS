package guru.xgm.jass.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.jass.openapi.util.Icons_JASS;
import guru.xgm.jass.lang.Language_JASS;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class LanguageFileType_JASS extends LanguageFileType {

    public static final LanguageFileType_JASS INSTANCE = new LanguageFileType_JASS();

    private LanguageFileType_JASS() {
        super(Language_JASS.INSTANCE);
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
        return Icons_JASS.FILE;
    }
}
