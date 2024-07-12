package raft.war.language.jass.psi.funName

import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.openapi.util.text.StringUtil
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiReference
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.StubIndex
import com.intellij.util.containers.OrderedSet
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassNamedStubbedPsiElementBase
import raft.war.language.jass.psi.JassReferenceBase

abstract class JassFunNameBaseImpl : JassNamedStubbedPsiElementBase<JassFunNameStub>,
    JassFunName {
    constructor(stub: JassFunNameStub, nodeType: IStubElementType<*, *>) : super(stub, nodeType)
    constructor(node: ASTNode) : super(node)

    override fun getName(): String {
        val stub = stub
        return if (stub != null) StringUtil.notNullize(stub.name) else this.nameIdentifier!!.text
    }

    override fun getNameIdentifier(): PsiElement? = this.node.psi

    override fun setName(name: String): PsiElement = this

    //fun resolve(): PsiElement? = reference.resolve()

    override fun getReference(): PsiReference {
        val myText = this.text
        val result = OrderedSet<PsiElement>()

        return object : JassReferenceBase(this, TextRange(0, textLength)) {
            override fun handleElementRename(newElementName: String): PsiElement {
                /*
                return when (val currentElement = element) {
                    is MonkeySimpleRefExpr -> setName(currentElement, newElementName)
                    else -> return null
                }
                 */
                return setName(newElementName)
            }

            override fun isReferenceTo(element: PsiElement): Boolean {
                val resolved = resolve()
                val manager = getElement().manager
                return manager.areElementsEquivalent(resolved, element)
                        || manager.areElementsEquivalent(resolved?.parent, element)
            }

            override fun resolveInner(incompleteCode: Boolean): List<PsiElement> {
                val scope = GlobalSearchScope.allScope(project)
                StubIndex.getElements(
                    KEY,
                    myText,
                    project,
                    scope,
                    JassFunName::class.java,
                ).forEach { name ->
                    result.add(name)
                }
                return result
            }
        }
    }
}
