package raft.war.language.jass.psi.funName

import com.intellij.psi.stubs.StringStubIndexExtension
import com.intellij.psi.stubs.StubIndexKey
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.stub.JassStubElementType.Companion.STUB_VERSION

class JassFunNameIndex : StringStubIndexExtension<JassNamedElement>() {
    override fun getVersion(): Int = super.version + STUB_VERSION

    override fun getKey(): StubIndexKey<String, JassNamedElement> = FUN_NAME_KEY
}

val FUN_NAME_KEY: StubIndexKey<String, JassNamedElement> =
    StubIndexKey.createIndexKey("jass.fun.name")
