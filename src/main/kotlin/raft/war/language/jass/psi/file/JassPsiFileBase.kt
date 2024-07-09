package raft.war.language.jass.psi.file

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.jass.JassLanguage
import raft.war.language.jass.JassFileType

class JassPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, JassLanguage.instance) {
    override fun getFileType(): FileType = JassFileType.instance
    override fun toString(): String = JassLanguage.NAME
}
