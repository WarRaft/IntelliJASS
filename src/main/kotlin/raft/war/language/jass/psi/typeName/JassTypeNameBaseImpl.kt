package raft.war.language.jass.psi.typeName

import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.openapi.util.text.StringUtil
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiReference
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.StubIndex
import com.intellij.util.containers.OrderedSet
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.stub.JassNamedStubbedPsiElementBase

abstract class JassTypeNameBaseImpl : JassNamedStubbedPsiElementBase<JassTypeNameStub>, JassTypeName {
    constructor(stub: JassTypeNameStub, nodeType: IStubElementType<*, *>) : super(stub, nodeType)
    constructor(node: ASTNode) : super(node)

    override fun getName(): String {
        val stub = stub
        return if (stub != null) StringUtil.notNullize(stub.name) else this.nameIdentifier.text
    }

    override fun getNameIdentifier(): PsiElement = this.node.psi

    override fun setName(name: String): PsiElement {
        this.firstChild.replace(JassElementTextFactory.getId(project, name))
        return this
    }

    override fun getReference(): PsiReference {
        val myText = this.text
        val result = OrderedSet<PsiElement>()

        return object : JassReferenceBase(this, TextRange(0, textLength)) {
            override fun handleElementRename(newElementName: String): PsiElement = setName(newElementName)

            override fun isReferenceTo(element: PsiElement): Boolean = element is JassTypeName && element.text == myText

            override fun resolveDeclaration(): List<PsiElement> {
                StubIndex.getElements(
                    TYPE_NAME_KEY,
                    myText,
                    project,
                    GlobalSearchScope.allScope(project),
                    JassNamedElement::class.java,
                ).forEach {
                    when (it.parent) {
                        is JassTypeDef -> result.add(it)
                    }
                }
                return result
            }
        }
    }

    companion object {
        const val TYPE_CODE = "code"

        fun isBaseType(name: String): Boolean = when (name) {
            "handle", "integer", "real", "boolean", "string", TYPE_CODE -> true
            else -> false
        }


    }
}
