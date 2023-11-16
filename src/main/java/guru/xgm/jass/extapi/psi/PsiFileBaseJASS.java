package guru.xgm.jass.extapi.psi;

import guru.xgm.jass.lang.LanguageJASS;
import guru.xgm.jass.openapi.fileTypes.LanguageFileTypeJASS;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import org.jetbrains.annotations.NotNull;

public class PsiFileBaseJASS extends PsiFileBase {

    public PsiFileBaseJASS(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, LanguageJASS.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return LanguageFileTypeJASS.INSTANCE;
    }

    @Override
    public String toString() {
        return "JASS File";
    }
}
