package raft.war.language.wts.psi.tree

import com.intellij.psi.tree.IElementType
import raft.war.language.wts.lang.WtsLanguage
import org.jetbrains.annotations.NonNls

class WtsIElement(debugName: @NonNls String) : IElementType(debugName, WtsLanguage.instance) {
    override fun toString(): String {
        return "WtsIElement." + super.toString()
    }
}
