package raft.war.language.lni.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.lni.lang.LniLanguage
import raft.war.language.lni.openapi.fileTypes.LniFileType.Companion.instance

class LniPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, LniLanguage.instance) {
    override fun getFileType(): FileType = instance
    override fun toString(): String = LniLanguage.NAME
}
