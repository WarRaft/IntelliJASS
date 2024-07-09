package raft.war.language.jass.psi.file

import com.intellij.psi.stubs.StubElement
import com.intellij.psi.stubs.StubInputStream
import com.intellij.psi.stubs.StubOutputStream
import com.intellij.psi.tree.IStubFileElementType
import org.jetbrains.annotations.NonNls
import raft.war.language.jass.JassLanguage

class JassFileElementType(language: JassLanguage?) : IStubFileElementType<JassPsiFileStub>(language) {
    override fun getStubVersion(): Int = VERSION

    override fun serialize(stub: JassPsiFileStub, dataStream: StubOutputStream) = Unit

    override fun deserialize(dataStream: StubInputStream, parentStub: StubElement<*>?): JassPsiFileStub =
        JassPsiFileStub(null)

    @NonNls
    override fun getExternalId(): String = super.getExternalId() + ".FILE"

    companion object {
        @JvmField
        val INSTANCE = JassFileElementType(JassLanguage.instance)
        private const val VERSION = 0
    }
}
