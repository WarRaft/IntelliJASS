package raft.war.language.jass

import com.intellij.openapi.util.TextRange
import com.intellij.patterns.PlatformPatterns
import com.intellij.psi.*
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.util.ProcessingContext
import com.intellij.util.containers.OrderedSet
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.funName.FUN_NAME_KEY

internal class JassReferenceContributor : PsiReferenceContributor() {
    override fun registerReferenceProviders(registrar: PsiReferenceRegistrar) {

        registrar.registerReferenceProvider(PlatformPatterns.psiElement(JassTypes.STR),
            object : PsiReferenceProvider() {
                override fun getReferencesByElement(
                    element: PsiElement,
                    context: ProcessingContext
                ): Array<PsiReference> {
                    if (element.text.length < 3) return PsiReference.EMPTY_ARRAY
                    val myText = element.text.substring(1, element.text.length - 1)

                    val arglist = element.parent.parent
                    if (arglist !is JassArgList) return PsiReference.EMPTY_ARRAY
                    val call = arglist.parent
                    if (call !is JassFunCall) return PsiReference.EMPTY_ARRAY
                    val callName = call.funName.text
                    if (callName != "ExecuteFunc" && callName != "ExecuteFuncEx") return PsiReference.EMPTY_ARRAY

                    val result = OrderedSet<PsiElement>()
                    val ref = object : JassReferenceBase(element, TextRange(1, element.textLength - 1)) {
                        override fun handleElementRename(newElementName: String): PsiElement {
                            val strval = JassElementTextFactory.getStrVal(element.project, newElementName)
                            element.firstChild.replace(strval)
                            return element
                        }

                        override fun isReferenceTo(element: PsiElement): Boolean = element.text == myText
                        override fun resolveDeclaration(): List<PsiElement> {
                            val scope = GlobalSearchScope.allScope(element.project)
                            StubIndex.getElements(
                                FUN_NAME_KEY,
                                myText,
                                element.project,
                                scope,
                                JassNamedElement::class.java,
                            ).forEach { name ->
                                if (name.parent is JassFunHead) result.add(name)
                            }
                            return result
                        }
                    }

                    return arrayOf(ref)
                }
            })
    }
}
