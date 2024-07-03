package raft.war.language.jass.psi.tree

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.lang.JassLanguage.Companion.instance
import org.jetbrains.annotations.NonNls

class JassIToken(debugName: @NonNls String) : IElementType(debugName, instance) {
    override fun toString(): String = "JassIToken." + super.toString()
}
