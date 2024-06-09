package guru.xgm.language.lni.psi.tree

import com.intellij.psi.tree.IElementType
import guru.xgm.language.lni.lang.LniLanguage.Companion.instance
import org.jetbrains.annotations.NonNls

class LniIToken(debugName: @NonNls String) : IElementType(debugName, instance) {
    override fun toString(): String = "LniIToken." + super.toString()
}
