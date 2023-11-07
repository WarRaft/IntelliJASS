package org.intellij.sdk.language.jass;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import org.jetbrains.annotations.NotNull;

public class JassFile extends PsiFileBase {

    public JassFile(@NotNull FileViewProvider viewProvider) {
        super(viewProvider, JassLanguage.INSTANCE);
    }

    @NotNull
    @Override
    public FileType getFileType() {
        return JassFileType.INSTANCE;
    }

    @Override
    public String toString() {
        return "Jass File";
    }

}
