package raft.war.language.jass.psi.funName

import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.NamedStubBase
import com.intellij.psi.stubs.StubElement
import com.intellij.util.io.StringRef
import raft.war.language.jass.psi.JassFunName

class JassFunNameStub : NamedStubBase<JassFunName> {
    constructor(parent: StubElement<*>?, elementType: IStubElementType<*, *>, name: StringRef?) : super(
        parent,
        elementType,
        name
    )

    constructor(parent: StubElement<*>?, elementType: IStubElementType<*, *>, name: String?) : super(
        parent,
        elementType,
        name
    )
}
