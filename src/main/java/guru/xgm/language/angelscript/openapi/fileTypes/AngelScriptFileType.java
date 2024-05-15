package guru.xgm.language.angelscript.openapi.fileTypes;

import com.intellij.openapi.fileTypes.LanguageFileType;
import guru.xgm.language.angelscript.icons.AngelScriptIcons;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;

public final class AngelScriptFileType extends LanguageFileType {

    public static final AngelScriptFileType INSTANCE = new AngelScriptFileType();

    public static final String EXTENSION = "as";

    private AngelScriptFileType() {
        super(AngelScriptLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public String getName() {
        return "AngelScript";
    }

    @NotNull
    @Override
    public String getDescription() {
        return "AngelScript";
    }

    @NotNull
    @Override
    public String getDefaultExtension() {
        return AngelScriptFileType.EXTENSION;
    }

    @Override
    public @NotNull Icon getIcon() {
        return AngelScriptIcons.FILE;
    }
}
