package raft.war.language.jass.psi

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.psi.funName.JassFunNameStubElementType

object JassElementTypeFactory {
    @JvmStatic
    fun factory(name: String): IElementType {
        print("JassElementTypeFactory $name \n")
        if (name == "FUN_NAME") return JassFunNameStubElementType(name)
        throw RuntimeException("Unknown element type: $name")
    }
}
