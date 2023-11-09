package guru.xgm.jgas.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.jgas.openapi.util.Icons_JGAS;
import guru.xgm.jgas.lang.Language_JGAS;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class LanguageFileType_JGAS extends LanguageFileType {

    public static final LanguageFileType_JGAS INSTANCE = new LanguageFileType_JGAS();

    private LanguageFileType_JGAS() {
        super(Language_JGAS.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "JGAS File";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "JGAS language file";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return "jgas";
    }

    @Override
    public @NotNull Icon getIcon() {
        return Icons_JGAS.FILE;
    }
}
