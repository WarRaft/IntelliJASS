package raft.war.language.zinc.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.zinc.lang.ZincLanguage
import raft.war.language.zinc.openapi.fileTypes.ZincFileType

class ZincPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, ZincLanguage.instance) {
    override fun getFileType(): FileType = ZincFileType.instance

    override fun toString(): String = ZincLanguage.NAME
}
