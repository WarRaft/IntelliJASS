package raft.war.language.jass.psi

import com.intellij.psi.tree.IElementType
import raft.war.language.jass.lang.JassLanguage.Companion.instance
import org.jetbrains.annotations.NonNls

class JassTokenType(debugName: @NonNls String) : IElementType(debugName, instance){
    override fun toString() = "JassTokenType.${super.toString()}"
}
