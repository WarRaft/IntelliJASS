package raft.war.language.jass.psi.stub

import com.intellij.psi.stubs.IStubElementType
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassTypeName
import raft.war.language.jass.psi.JassTypes
import raft.war.language.jass.psi.JassVarName
import raft.war.language.jass.psi.funName.JassFunNameStub
import raft.war.language.jass.psi.funName.JassFunNameStubElementType
import raft.war.language.jass.psi.typeName.JassTypeNameStub
import raft.war.language.jass.psi.typeName.JassTypeNameStubElementType
import raft.war.language.jass.psi.varName.JassVarNameStub
import raft.war.language.jass.psi.varName.JassVarNameStubElementType

interface JassStubElementTypes {
    @Suppress("unused")
    companion object {
        @JvmField
        val VAR_NAME: IStubElementType<JassVarNameStub, JassVarName> =
            JassVarNameStubElementType(JassTypes::VAR_NAME.name)

        @JvmField
        val FUN_NAME: IStubElementType<JassFunNameStub, JassFunName> =
            JassFunNameStubElementType(JassTypes::FUN_NAME.name)

        @JvmField
        val TYPE_NAME: IStubElementType<JassTypeNameStub, JassTypeName> =
            JassTypeNameStubElementType(JassTypes::TYPE_NAME.name)
    }
}
