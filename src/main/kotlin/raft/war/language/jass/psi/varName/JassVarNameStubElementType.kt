package raft.war.language.jass.psi.varName

import com.intellij.lang.ASTNode
import com.intellij.psi.stubs.StubElement
import com.intellij.psi.stubs.StubInputStream
import com.intellij.psi.stubs.StubOutputStream
import raft.war.language.jass.psi.JassVarName
import raft.war.language.jass.psi.impl.JassVarNameImpl
import raft.war.language.jass.psi.stub.JassNamedStubElementType

class JassVarNameStubElementType(debugName: String) :
    JassNamedStubElementType<JassVarNameStub, JassVarName>(debugName) {
    override fun serialize(stub: JassVarNameStub, dataStream: StubOutputStream) = dataStream.writeName(stub.name)

    override fun shouldCreateStub(node: ASTNode?): Boolean = node?.psi is JassVarName

    override fun deserialize(dataStream: StubInputStream, parentStub: StubElement<*>?): JassVarNameStub =
        JassVarNameStub(parentStub, this, dataStream.readName())

    override fun createPsi(stub: JassVarNameStub): JassVarName = JassVarNameImpl(stub, this)

    override fun createStub(psi: JassVarName, parentStub: StubElement<*>?): JassVarNameStub =
        JassVarNameStub(parentStub, this, psi.name)
}
