package raft.war.language.angelscript.psi.file

import com.intellij.extapi.psi.PsiFileBase
import com.intellij.openapi.fileTypes.FileType
import com.intellij.psi.FileViewProvider
import raft.war.language.angelscript.AngelScriptLanguage
import raft.war.language.angelscript.AngelScriptFileType

class AngelScriptFile(viewProvider: FileViewProvider) : PsiFileBase(viewProvider, AngelScriptLanguage.instance) {
    override fun getFileType(): FileType {
        return AngelScriptFileType.instance
    }

    override fun toString(): String {
        return AngelScriptLanguage.NAME
    }
}
