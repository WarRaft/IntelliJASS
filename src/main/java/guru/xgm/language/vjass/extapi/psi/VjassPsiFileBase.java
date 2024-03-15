package guru.xgm.language.vjass.extapi.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.language.vjass.lang.VjassLanguage;
import guru.xgm.language.vjass.openapi.fileTypes.VjassFileType;
import org.jetbrains.annotations.NotNull;

public class VjassPsiFileBase extends PsiFileBase {

    public VjassPsiFileBase(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, VjassLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return VjassFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "VJASS";
    }
}
