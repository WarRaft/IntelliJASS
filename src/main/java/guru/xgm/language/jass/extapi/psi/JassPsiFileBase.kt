package guru.xgm.language.jass.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import guru.xgm.language.jass.lang.JassLanguage
import guru.xgm.language.jass.openapi.fileTypes.JassFileType

class JassPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, JassLanguage.instance) {
    override fun getFileType(): FileType {
        return JassFileType.INSTANCE
    }

    override fun toString(): String {
        return JassLanguage.NAME
    }
}
