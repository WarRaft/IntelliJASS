package raft.war.language.jass.psi.typeName

import com.intellij.lang.ASTNode
import com.intellij.psi.stubs.StubElement
import com.intellij.psi.stubs.StubInputStream
import com.intellij.psi.stubs.StubOutputStream
import raft.war.language.jass.psi.JassTypeName
import raft.war.language.jass.psi.impl.JassTypeNameImpl
import raft.war.language.jass.psi.stub.JassNamedStubElementType

class JassTypeNameStubElementType(debugName: String) :
    JassNamedStubElementType<JassTypeNameStub, JassTypeName>(debugName, TYPE_NAME_KEY) {

    override fun serialize(stub: JassTypeNameStub, dataStream: StubOutputStream) = dataStream.writeName(stub.name)

    override fun shouldCreateStub(node: ASTNode?): Boolean = node?.psi is JassTypeName

    override fun deserialize(dataStream: StubInputStream, parentStub: StubElement<*>?): JassTypeNameStub =
        JassTypeNameStub(parentStub, this, dataStream.readName())

    override fun createPsi(stub: JassTypeNameStub): JassTypeName = JassTypeNameImpl(stub, this)

    override fun createStub(psi: JassTypeName, parentStub: StubElement<*>?): JassTypeNameStub =
        JassTypeNameStub(parentStub, this, psi.name)
}
