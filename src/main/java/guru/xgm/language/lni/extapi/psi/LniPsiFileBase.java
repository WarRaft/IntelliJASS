package guru.xgm.language.lni.extapi.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.language.lni.lang.LniLanguage;
import guru.xgm.language.lni.openapi.fileTypes.LniFileType;
import org.jetbrains.annotations.NotNull;

public class LniPsiFileBase extends PsiFileBase {

    public LniPsiFileBase(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, LniLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return LniFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "LNI";
    }
}
