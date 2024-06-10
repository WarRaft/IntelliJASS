package guru.xgm.language.vjass.psi.tree

import com.intellij.psi.tree.IElementType
import guru.xgm.language.vjass.lang.VjassLanguage
import org.jetbrains.annotations.NonNls

class VjassIToken(debugName: @NonNls String) : IElementType(debugName, VjassLanguage.instance) {
    override fun toString(): String = "VjassIToken." + super.toString()
}
