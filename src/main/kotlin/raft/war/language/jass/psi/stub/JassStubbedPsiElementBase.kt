package raft.war.language.jass.psi.stub

import com.intellij.extapi.psi.StubBasedPsiElementBase
import com.intellij.lang.ASTNode
import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.StubElement
import raft.war.language.jass.psi.compositeElement.JassCompositeElement

abstract class JassStubbedPsiElementBase<T : StubElement<*>> : StubBasedPsiElementBase<T>,
    JassCompositeElement {
    constructor(stub: T, nodeType: IStubElementType<*, *>) : super(stub, nodeType)
    constructor(node: ASTNode) : super(node)

    override fun toString(): String = elementType.toString()
}
