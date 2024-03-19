package guru.xgm.language.lni.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.language.lni.icons.LniScriptIcons;
import guru.xgm.language.lni.lang.LniLanguage;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class LniFileType extends LanguageFileType {

    public static final LniFileType INSTANCE = new LniFileType();

    private LniFileType() {
        super(LniLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "LNI";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "LNI language file";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return "lni";
    }

    @Override
    public @NotNull Icon getIcon() {
        return LniScriptIcons.FILE;
    }
}
