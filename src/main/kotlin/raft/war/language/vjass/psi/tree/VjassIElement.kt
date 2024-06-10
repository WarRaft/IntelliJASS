package raft.war.language.vjass.psi.tree

import com.intellij.psi.tree.IElementType
import raft.war.language.vjass.lang.VjassLanguage
import org.jetbrains.annotations.NonNls

class VjassIElement(debugName: @NonNls String) : IElementType(debugName, VjassLanguage.instance) {
    override fun toString(): String = "VjassIElement." + super.toString()
}
