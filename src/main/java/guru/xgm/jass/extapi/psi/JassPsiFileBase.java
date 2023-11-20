package guru.xgm.jass.extapi.psi;

import guru.xgm.jass.lang.JassLanguage;
import guru.xgm.jass.openapi.fileTypes.JassLanguageFileType;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import org.jetbrains.annotations.NotNull;

public class JassPsiFileBase extends PsiFileBase {

    public JassPsiFileBase(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, JassLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return JassLanguageFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "JASS File";
    }
}
