package raft.war.language.jass.psi.funName

import com.intellij.psi.stubs.StringStubIndexExtension
import com.intellij.psi.stubs.StubIndexKey
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.stub.JassStubElementType.Companion.VERSION

class JassFunNameIndex : StringStubIndexExtension<JassNamedElement>() {
    override fun getVersion(): Int = super.getVersion() + VERSION

    override fun getKey(): StubIndexKey<String, JassNamedElement> = KEY
}

val KEY: StubIndexKey<String, JassNamedElement> =
    StubIndexKey.createIndexKey("jass.fun.name")
