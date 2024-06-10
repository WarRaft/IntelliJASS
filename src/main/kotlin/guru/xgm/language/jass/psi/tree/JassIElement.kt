package guru.xgm.language.jass.psi.tree

import com.intellij.psi.tree.IElementType
import guru.xgm.language.jass.lang.JassLanguage.Companion.instance
import org.jetbrains.annotations.NonNls

class JassIElement(debugName: @NonNls String) : IElementType(debugName, instance) {
    override fun toString(): String {
        return "JassIElement." + super.toString()
    }
}
