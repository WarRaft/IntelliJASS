package raft.war.language.lni.psi.tree

import com.intellij.psi.tree.IElementType
import raft.war.language.lni.lang.LniLanguage.Companion.instance
import org.jetbrains.annotations.NonNls

class LniIToken(debugName: @NonNls String) : IElementType(debugName, instance) {
    override fun toString(): String = "LniIToken." + super.toString()
}
