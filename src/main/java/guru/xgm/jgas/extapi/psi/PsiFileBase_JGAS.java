package guru.xgm.jgas.extapi.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.jgas.openapi.fileTypes.LanguageFileType_JGAS;
import guru.xgm.jgas.lang.Language_JGAS;
import org.jetbrains.annotations.NotNull;

public class PsiFileBase_JGAS extends PsiFileBase {

    public PsiFileBase_JGAS(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, Language_JGAS.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return LanguageFileType_JGAS.INSTANCE;
    }

    @Override
    public String toString() {
        return "JGAS File";
    }

}
