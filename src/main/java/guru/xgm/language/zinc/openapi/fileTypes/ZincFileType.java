package guru.xgm.language.zinc.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.language.zinc.icons.ZincIcons;
import guru.xgm.language.zinc.lang.ZincLanguage;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class ZincFileType extends LanguageFileType {

    public static final ZincFileType INSTANCE = new ZincFileType();

    private ZincFileType() {
        super(ZincLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "ZINC";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "ZINC";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return "zn";
    }

    @Override
    public @NotNull Icon getIcon() {
        return ZincIcons.FILE;
    }
}
