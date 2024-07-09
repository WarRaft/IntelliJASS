package raft.war.language.jass.psi.funName

import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.openapi.util.text.StringUtil
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiReference
import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.util.containers.OrderedSet
import raft.war.language.jass.psi.JassFunCall
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassNamedStubbedPsiElementBase
import raft.war.language.jass.psi.JassStmt
import raft.war.language.jass.psi.file.JassPsiFileBase
import raft.war.language.jass.psi.reference.JassReferenceBase

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

    fun resolve(): PsiElement? = reference.resolve()

    override fun getReference(): PsiReference {
        //print("☢️ getReference  $text \n")
        val o = this
        val myText = o.text
        val myResult = OrderedSet<PsiElement>()

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
                var parent: PsiElement? = PsiTreeUtil.getParentOfType(o, JassStmt::class.java)
                if (parent != null) {
                    print("paren | $parent | ${parent.text} \n\n")
                }

                while (parent != null && parent !is JassPsiFileBase) {
                    if (parent is JassFunCall) {
                        val name = parent.funName
                        //print("✅ ${name.text} | $myText")

                        if (incompleteCode || name.textMatches(myText)) {
                            myResult.add(name)
                        }
                    }

                    var parentNext = parent.prevSibling
                    while (parentNext != null) {
                        val firstChild = parentNext.firstChild
                        if (firstChild is JassFunCall) {
                            val name = firstChild.funName
                            if (incompleteCode || name.textMatches(myText)) {
                                myResult.add(name)
                            }
                        }

                        /*
                        if (parentNext is MonkeyParamGroup) {
                            parentNext.varDefinitionList.forEach {
                                if (incompleteCode || it.ident.text == myText) {
                                    myResult.add(it)
                                }
                            }
                        }
                         */
                        parentNext = parentNext.prevSibling
                    }
                    parent = parent.parent
                }
                return myResult
            }
        }
    }
}
