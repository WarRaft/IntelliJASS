package raft.war.language.jass.psi.funName

import com.intellij.lang.ASTNode
import com.intellij.psi.stubs.StubElement
import com.intellij.psi.stubs.StubInputStream
import com.intellij.psi.stubs.StubOutputStream
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassNamedStubElementType
import raft.war.language.jass.psi.impl.JassFunNameImpl

class JassFunNameStubElementType(debugName: String) :
    JassNamedStubElementType<JassFunNameStub, JassFunName>(debugName) {
    override fun serialize(stub: JassFunNameStub, dataStream: StubOutputStream) {
        dataStream.writeName(stub.name)
    }

    override fun shouldCreateStub(node: ASTNode?): Boolean {
        val psi = node?.psi
        if (psi !is JassFunName) {
            return false
        }
        //return psi.parent?.parent?.parent is MonkeyAll
        return true
    }

    override fun deserialize(dataStream: StubInputStream, parentStub: StubElement<*>?): JassFunNameStub {
        return JassFunNameStub(parentStub, this, dataStream.readName())
    }

    override fun createPsi(stub: JassFunNameStub): JassFunName {
        return JassFunNameImpl(stub, this)
    }

    override fun createStub(psi: JassFunName, parentStub: StubElement<*>?): JassFunNameStub {
        return JassFunNameStub(parentStub, this, psi.name)
    }
}
