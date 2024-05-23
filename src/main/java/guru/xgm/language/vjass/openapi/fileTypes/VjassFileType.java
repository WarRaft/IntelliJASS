package guru.xgm.language.vjass.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.language.vjass.icons.VjassIcons;
import guru.xgm.language.vjass.lang.VjassLanguage;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class VjassFileType extends LanguageFileType {

    public static final VjassFileType INSTANCE = new VjassFileType();

    private VjassFileType() {
        super(VjassLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "VJASS";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "VJASS";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return "vj";
    }

    @Override
    public @NotNull Icon getIcon() {
        return VjassIcons.FILE;
    }
}
