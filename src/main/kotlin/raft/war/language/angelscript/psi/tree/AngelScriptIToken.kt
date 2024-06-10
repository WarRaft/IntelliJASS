package raft.war.language.angelscript.psi.tree

import com.intellij.psi.tree.IElementType
import raft.war.language.angelscript.lang.AngelScriptLanguage.Companion.instance
import org.jetbrains.annotations.NonNls

class AngelScriptIToken(debugName: @NonNls String) : IElementType(debugName, instance) {
    override fun toString(): String = "AngelScriptIToken." + super.toString()
}
