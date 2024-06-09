package guru.xgm.language.lni.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import guru.xgm.language.lni.lang.LniLanguage
import guru.xgm.language.lni.openapi.fileTypes.LniFileType.Companion.instance

class LniPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, LniLanguage.instance) {
    override fun getFileType(): FileType = instance
    override fun toString(): String = LniLanguage.NAME
}
