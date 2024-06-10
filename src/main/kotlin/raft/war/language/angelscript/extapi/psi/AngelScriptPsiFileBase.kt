package raft.war.language.angelscript.extapi.psi

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.angelscript.lang.AngelScriptLanguage
import raft.war.language.angelscript.openapi.fileTypes.AngelScriptFileType

class AngelScriptPsiFileBase(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, AngelScriptLanguage.instance) {
    override fun getFileType(): FileType {
        return AngelScriptFileType.instance
    }

    override fun toString(): String {
        return AngelScriptLanguage.NAME
    }
}
