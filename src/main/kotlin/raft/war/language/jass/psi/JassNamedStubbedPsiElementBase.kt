package raft.war.language.jass.psi

import com.intellij.lang.ASTNode
import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.StubElement

abstract class JassNamedStubbedPsiElementBase<T : StubElement<*>> :
    JassStubbedPsiElementBase<T>,
    JassNamedElement {
    constructor(stub: T, nodeType: IStubElementType<*, *>) : super(stub, nodeType)
    constructor(node: ASTNode) : super(node)
}
