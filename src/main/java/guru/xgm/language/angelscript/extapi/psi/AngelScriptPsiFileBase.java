package guru.xgm.language.angelscript.extapi.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.language.angelscript.lang.AngelScriptLanguage;
import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptFileType;
import org.jetbrains.annotations.NotNull;

public class AngelScriptPsiFileBase extends PsiFileBase {

    public AngelScriptPsiFileBase(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, AngelScriptLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return AngelScriptFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "AngelScript";
    }
}
