package raft.war.language.jass.psi.stub

import com.intellij.psi.stubs.IndexSink
import com.intellij.psi.stubs.NamedStubBase
import com.intellij.psi.stubs.StubIndexKey
import raft.war.language.jass.psi.JassNamedElement

abstract class JassNamedStubElementType<S : NamedStubBase<T>, T : JassNamedElement>
    (debugName: String, val key: StubIndexKey<String, JassNamedElement>) : JassStubElementType<S, T>(debugName) {
    override fun indexStub(stub: S, sink: IndexSink) {
        val name = stub.name
        if (name != null) {
            sink.occurrence(key, name)
        }
    }
}
