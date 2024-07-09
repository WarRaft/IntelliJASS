package raft.war.language.jass.psi

import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiElement
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.util.containers.OrderedSet
import raft.war.language.jass.psi.reference.JassReference
import raft.war.language.jass.psi.reference.JassReferenceBase

object JassPsiImplUtil {

    @JvmStatic
    fun resolve(o: JassNamedElement): PsiElement? {
        print("resolve $o ${o.text} \n")
        return o.reference?.resolve()
    }

    @JvmStatic
    fun getReference(o: PsiElement): JassReferenceBase {
        print("getReference $o ${o.text} \n")

        return object : JassReferenceBase(o, TextRange(0, o.textLength)) {
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
