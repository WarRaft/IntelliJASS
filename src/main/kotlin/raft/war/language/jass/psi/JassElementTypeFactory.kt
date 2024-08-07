package raft.war.language.jass.psi

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.psi.funName.JassFunNameStubElementType

object JassElementTypeFactory {
    @JvmStatic
    fun factory(name: String): IElementType {
        if (name == JassTypes::FUN_NAME.name) return JassFunNameStubElementType(name)
        throw RuntimeException("Unknown element type: $name")
    }
}
