package guru.xgm.language.jass.extapi.psi;

import guru.xgm.language.jass.lang.JassLanguage;
import guru.xgm.language.jass.openapi.fileTypes.JassFileType;

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
        return JassFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "JASS";
    }
}
