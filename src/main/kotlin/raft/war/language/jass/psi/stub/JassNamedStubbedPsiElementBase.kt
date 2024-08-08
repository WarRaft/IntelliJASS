package raft.war.language.jass.psi.stub

import com.intellij.lang.ASTNode
import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.StubElement
import raft.war.language.jass.psi.JassNamedElement

abstract class JassNamedStubbedPsiElementBase<T : StubElement<*>> :
    JassStubbedPsiElementBase<T>,
    JassNamedElement {
    constructor(stub: T, nodeType: IStubElementType<*, *>) : super(stub, nodeType)
    constructor(node: ASTNode) : super(node)
}
