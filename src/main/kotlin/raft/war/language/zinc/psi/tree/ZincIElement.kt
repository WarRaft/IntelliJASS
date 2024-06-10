package raft.war.language.zinc.psi.tree

import com.intellij.psi.tree.IElementType
import raft.war.language.zinc.lang.ZincLanguage
import org.jetbrains.annotations.NonNls

class ZincIElement(debugName: @NonNls String) : IElementType(debugName, ZincLanguage.instance) {
    override fun toString(): String = "ZincIElement." + super.toString()
}
