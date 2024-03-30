package guru.xgm.language.wts.extapi.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.language.wts.lang.WtsLanguage;
import guru.xgm.language.wts.openapi.fileTypes.WtsFileType;
import org.jetbrains.annotations.NotNull;

public class WtsPsiFileBase extends PsiFileBase {

    public WtsPsiFileBase(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, WtsLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return WtsFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "WTS";
    }
}
