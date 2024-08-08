package raft.war.language.jass.psi.stub

import com.intellij.psi.stubs.IndexSink
import com.intellij.psi.stubs.NamedStubBase
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.funName.KEY

abstract class JassNamedStubElementType<S : NamedStubBase<T>, T : JassNamedElement>
    (debugName: String) : JassStubElementType<S, T>(debugName) {
    override fun indexStub(stub: S, sink: IndexSink) {
        val name = stub.name
        if (name != null) {
            sink.occurrence(KEY, name)
        }
    }
}
