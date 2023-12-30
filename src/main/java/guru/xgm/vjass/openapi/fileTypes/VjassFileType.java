package guru.xgm.vjass.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.vjass.icons.VjassIcons;
import guru.xgm.vjass.lang.VjassLanguage;
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
        return "VJASS language file";
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
