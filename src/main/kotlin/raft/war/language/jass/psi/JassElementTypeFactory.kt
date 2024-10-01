package raft.war.language.jass.psi

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.psi.funName.JassFunNameStubElementType
import raft.war.language.jass.psi.typeName.JassTypeNameStubElementType
import raft.war.language.jass.psi.varName.JassVarNameStubElementType

object JassElementTypeFactory {
    @JvmStatic
    fun factory(name: String): IElementType = when (name) {
        JassTypes::FUN_NAME.name -> JassFunNameStubElementType(name)
        JassTypes::VAR_NAME.name -> JassVarNameStubElementType(name)
        JassTypes::TYPE_NAME.name -> JassTypeNameStubElementType(name)
        else -> throw RuntimeException("Unknown element type: $name")
    }
}
