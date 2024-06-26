package raft.war.language.jass.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.jass.lang.JassLanguage
import raft.war.language.jass.openapi.fileTypes.JassFileType

class JassPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, JassLanguage.instance) {
    override fun getFileType(): FileType {
        return JassFileType.instance
    }

    override fun toString(): String {
        return JassLanguage.NAME
    }
}
