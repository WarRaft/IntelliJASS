package raft.war.language.jass.psi.funName

import com.intellij.psi.stubs.StringStubIndexExtension
import com.intellij.psi.stubs.StubIndexKey
import raft.war.language.jass.psi.JassFunName

class JassFunNameIndex : StringStubIndexExtension<JassFunName>() {
    override fun getVersion(): Int = super.getVersion() + VERSION

    override fun getKey(): StubIndexKey<String, JassFunName> = KEY

    companion object {
        const val VERSION = 0

    }
}

val KEY: StubIndexKey<String, JassFunName> =
    StubIndexKey.createIndexKey("jass.fun.name")
