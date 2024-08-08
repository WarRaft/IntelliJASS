package raft.war.language.jass.psi.funName

import com.intellij.psi.stubs.StringStubIndexExtension
import com.intellij.psi.stubs.StubIndexKey
import raft.war.language.jass.psi.JassNamedElement

class JassFunNameIndex : StringStubIndexExtension<JassNamedElement>() {
    override fun getVersion(): Int = super.getVersion() + VERSION

    override fun getKey(): StubIndexKey<String, JassNamedElement> = KEY

    companion object {
        private const val VERSION = 1
    }
}

val KEY: StubIndexKey<String, JassNamedElement> =
    StubIndexKey.createIndexKey("jass.fun.name")
