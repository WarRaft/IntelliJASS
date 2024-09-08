package raft.war.language.jass.psi.varName

import com.intellij.psi.stubs.StringStubIndexExtension
import com.intellij.psi.stubs.StubIndexKey
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.stub.JassStubElementType.Companion.STUB_VERSION

class JassVarNameIndex : StringStubIndexExtension<JassNamedElement>() {
    override fun getVersion(): Int = super.version + STUB_VERSION

    override fun getKey(): StubIndexKey<String, JassNamedElement> = VAR_NAME_KEY
}

val VAR_NAME_KEY: StubIndexKey<String, JassNamedElement> =
    StubIndexKey.createIndexKey("jass.var.name")
