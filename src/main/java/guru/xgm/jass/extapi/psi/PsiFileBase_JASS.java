package guru.xgm.jass.extapi.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.jass.openapi.fileTypes.LanguageFileType_JASS;
import guru.xgm.jass.lang.Language_JASS;
import org.jetbrains.annotations.NotNull;

public class PsiFileBase_JASS extends PsiFileBase {

    public PsiFileBase_JASS(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, Language_JASS.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return LanguageFileType_JASS.INSTANCE;
    }

    @Override
    public String toString() {
        return "JASS File";
    }

}
