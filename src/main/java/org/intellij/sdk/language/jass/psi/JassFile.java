// https://plugins.jetbrains.com/docs/intellij/lexer-and-parser-definition.html#define-a-lexer

package org.intellij.sdk.language.jass.psi;

import com.intellij.extapi.psi.PsiFileBase;
import com.intellij.openapi.fileTypes.FileType;
import com.intellij.psi.FileViewProvider;
import guru.xgm.jass.openapi.fileTypes.LanguageFileType_JASS;
import guru.xgm.jass.lang.Language_JASS;
import org.jetbrains.annotations.NotNull;

public class JassFile extends PsiFileBase {

    public JassFile(@NotNull FileViewProvider viewProvider) {
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
