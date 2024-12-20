package raft.war.language.jass.psi.stub

import raft.war.language.jass.psi.JassTypes
import raft.war.language.jass.psi.funName.JassFunNameStubElementType
import raft.war.language.jass.psi.typeName.JassTypeNameStubElementType
import raft.war.language.jass.psi.varName.JassVarNameStubElementType

// https://plugins.jetbrains.com/docs/intellij/stub-indexes.html#implementation

interface JassStubElementTypes {

    @Suppress("unused")
    companion object {
        @JvmField
        val VAR_NAME: JassVarNameStubElementType = JassTypes.VAR_NAME as JassVarNameStubElementType

        @JvmField
        val FUN_NAME: JassFunNameStubElementType = JassTypes.FUN_NAME as JassFunNameStubElementType

        @JvmField
        val TYPE_NAME: JassTypeNameStubElementType = JassTypes.TYPE_NAME as JassTypeNameStubElementType
    }
}
