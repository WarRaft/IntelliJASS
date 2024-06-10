package raft.war.language.wts.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.wts.lang.WtsLanguage
import raft.war.language.wts.openapi.fileTypes.WtsFileType

class WtsPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, WtsLanguage.instance) {
    override fun getFileType(): FileType {
        return WtsFileType.instance
    }

    override fun toString(): String = WtsLanguage.NAME
}
