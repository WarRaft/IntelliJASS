package raft.war.language.jass.psi.funName

import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.openapi.util.text.StringUtil
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiElementVisitor
import com.intellij.psi.PsiReference
import com.intellij.psi.stubs.IStubElementType
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.JassNamedStubbedPsiElementBase
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
        print("☢️ getReference  $text \n")

        return object : JassReferenceBase(this, TextRange(0, textLength)) {
            override fun resolveInner(incompleteCode: Boolean): List<PsiElement> {
                TODO("Not yet implemented")
            }
        }
    }

    /*
    @JvmStatic
    fun getReference(o: MonkeySimpleRefExpr): MonkeyReferenceBase {
        val myText = o.ident.text
        val myResult = OrderedSet<PsiElement>()
        return object : MonkeyReferenceBase(o, TextRange(0, o.textLength)) {
            override fun handleElementRename(newElementName: String): PsiElement? {
                return when (val currentElement = element) {
                    is MonkeySimpleRefExpr -> setName(currentElement, newElementName)
                    else -> return null
                }
            }

            override fun isReferenceTo(element: PsiElement): Boolean {
                val resolved = resolve()
                val manager = getElement().manager
                return manager.areElementsEquivalent(resolved, element)
                        || manager.areElementsEquivalent(resolved?.parent, element)
            }

            override fun resolveInner(incompleteCode: Boolean): List<PsiElement> {
                var parent: PsiElement? = PsiTreeUtil.getParentOfType(o, MonkeyStatement::class.java)
                while (parent !is MonkeyAll && parent != null) {

                    if (parent is MonkeyLetStatement) {
                        val ident = parent.varDefinition?.ident
                        if (incompleteCode || ident?.textMatches(myText) == true) {
                            myResult.add(parent.varDefinition)
                        }
                    }

                    var parentNext = parent.prevSibling
                    while (parentNext != null) {
                        val firstChild = parentNext.firstChild
                        if (firstChild is MonkeyLetStatement) {
                            val ident = firstChild.varDefinition?.ident
                            if (incompleteCode || ident?.textMatches(myText) == true) {
                                myResult.add(firstChild.varDefinition)
                            }
                        }

                        if (parentNext is MonkeyParamGroup) {
                            parentNext.varDefinitionList.forEach {
                                if (incompleteCode || it.ident.text == myText) {
                                    myResult.add(it)
                                }
                            }
                        }
                        parentNext = parentNext.prevSibling
                    }
                    parent = parent.parent
                }
                return myResult
            }
        }
    }


     */
}
