package guru.xgm.jass.openapi.fileTypes;

import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import guru.xgm.jass.lang.JassLanguage;
import guru.xgm.jass.icons.JassIcons;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

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

    @Override
    public Charset extractCharsetFromFileContent(@Nullable Project project, @Nullable VirtualFile file, @NotNull CharSequence content) {
        return StandardCharsets.ISO_8859_1;
    }

    @Override
    public @NonNls @NotNull String getCharset(@NotNull VirtualFile file, byte @NotNull [] content) {
        return "ISO-8859-1";
    }
}
