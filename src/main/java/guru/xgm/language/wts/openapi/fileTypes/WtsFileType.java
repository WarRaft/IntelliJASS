package guru.xgm.language.wts.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.language.wts.isons.WtsIcons;
import guru.xgm.language.wts.lang.WtsLanguage;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class WtsFileType extends LanguageFileType {

    public static final WtsFileType INSTANCE = new WtsFileType();

    public WtsFileType() {
        super(WtsLanguage.INSTANCE);
    }

    public static final String extension = "wts";

    @NotNull
    @Override
    public String getName() {
        return "WTS";
    }

    @NotNull
    @Override
    public String getDescription() {
        //noinspection DialogTitleCapitalization
        return "Warcraft Text String file";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return extension;
    }

    @Override
    public @NotNull Icon getIcon() {
        return WtsIcons.FILE;
    }
}
