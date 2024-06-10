package guru.xgm.language.vjass.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import guru.xgm.language.vjass.lang.VjassLanguage
import guru.xgm.language.vjass.openapi.fileTypes.VjassFileType

class VjassPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, VjassLanguage.instance) {
    override fun getFileType(): FileType = VjassFileType.instance

    override fun toString(): String = VjassLanguage.NAME
}
