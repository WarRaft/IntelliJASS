package raft.war.language.jass.psi.varName

import com.intellij.psi.stubs.StringStubIndexExtension
import com.intellij.psi.stubs.StubIndexKey
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.stub.JassStubElementType.Companion.VERSION

class JassVarNameIndex : StringStubIndexExtension<JassNamedElement>() {
    override fun getVersion(): Int = super.version + VERSION

    override fun getKey(): StubIndexKey<String, JassNamedElement> = KEY
}

val KEY: StubIndexKey<String, JassNamedElement> =
    StubIndexKey.createIndexKey("jass.var.name")
