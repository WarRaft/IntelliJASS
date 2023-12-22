package guru.xgm.zinc.extapi.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.zinc.lang.ZincLanguage;
import guru.xgm.zinc.openapi.fileTypes.ZincFileType;
import org.jetbrains.annotations.NotNull;

public class ZincPsiFileBase extends PsiFileBase {

    public ZincPsiFileBase(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, ZincLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return ZincFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "ZINC";
    }
}
