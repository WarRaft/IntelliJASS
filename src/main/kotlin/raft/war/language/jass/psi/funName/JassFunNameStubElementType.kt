package raft.war.language.jass.psi.funName

import com.intellij.lang.ASTNode
import com.intellij.psi.stubs.StubElement
import com.intellij.psi.stubs.StubInputStream
import com.intellij.psi.stubs.StubOutputStream
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.stub.JassNamedStubElementType
import raft.war.language.jass.psi.impl.JassFunNameImpl

class JassFunNameStubElementType(debugName: String) :
    JassNamedStubElementType<JassFunNameStub, JassFunName>(debugName) {
    override fun serialize(stub: JassFunNameStub, dataStream: StubOutputStream) = dataStream.writeName(stub.name)

    override fun shouldCreateStub(node: ASTNode?): Boolean = node?.psi is JassFunName

    override fun deserialize(dataStream: StubInputStream, parentStub: StubElement<*>?): JassFunNameStub =
        JassFunNameStub(parentStub, this, dataStream.readName())

    override fun createPsi(stub: JassFunNameStub): JassFunName = JassFunNameImpl(stub, this)

    override fun createStub(psi: JassFunName, parentStub: StubElement<*>?): JassFunNameStub =
        JassFunNameStub(parentStub, this, psi.name)
}
