package raft.war.language.vjass.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.vjass.lang.VjassLanguage
import raft.war.language.vjass.VjassFileType

class VjassPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, VjassLanguage.instance) {
    override fun getFileType(): FileType = VjassFileType.instance

    override fun toString(): String = VjassLanguage.NAME
}
