package raft.war.language.jass.psi.funName

import com.intellij.lang.ASTNode
import com.intellij.openapi.util.text.StringUtil
import com.intellij.psi.PsiElement
import com.intellij.psi.stubs.IStubElementType
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassNamedStubbedPsiElementBase

abstract class JassFunNameBaseImpl : JassNamedStubbedPsiElementBase<JassFunNameStub>,
    JassFunName {
    constructor(stub: JassFunNameStub, nodeType: IStubElementType<*, *>) : super(stub, nodeType)
    constructor(node: ASTNode) : super(node)

    override fun getName(): String {
        val stub = stub
        return if (stub != null) StringUtil.notNullize(stub.name) else this.nameIdentifier!!.text
    }

    override fun getNameIdentifier(): PsiElement? {
        return this.node.psi
    }

    override fun setName(name: String): PsiElement {
        return this
    }
}
