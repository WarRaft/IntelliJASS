package raft.war.language.jass.psi.stub

import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.StubElement
import raft.war.language.jass.JassLanguage
import raft.war.language.jass.psi.compositeElement.JassCompositeElement

abstract class JassStubElementType<S : StubElement<T>, T : JassCompositeElement?>
    (debugName: String) :
    IStubElementType<S, T>(debugName, JassLanguage.instance) {
    override fun getExternalId(): String = "jass.${super.toString()}"

    companion object {
        const val VERSION = 4
    }
}
