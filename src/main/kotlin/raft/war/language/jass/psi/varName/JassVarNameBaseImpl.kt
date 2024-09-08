package raft.war.language.jass.psi.varName

import com.intellij.lang.ASTNode
import com.intellij.openapi.util.TextRange
import com.intellij.openapi.util.text.StringUtil
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiReference
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.IStubElementType
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.util.containers.OrderedSet
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.stub.JassNamedStubbedPsiElementBase

abstract class JassVarNameBaseImpl : JassNamedStubbedPsiElementBase<JassVarNameStub>, JassVarName {
    constructor(stub: JassVarNameStub, nodeType: IStubElementType<*, *>) : super(stub, nodeType)
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
        val nodeScope = PsiTreeUtil.findFirstParent(node.psi) { it -> it is JassFun || it is JassGlob }

        return object : JassReferenceBase(this, TextRange(0, textLength)) {
            override fun handleElementRename(newElementName: String): PsiElement = setName(newElementName)

            override fun isReferenceTo(element: PsiElement): Boolean {
                if (nodeScope == null) return false
                if (element !is JassVarName || element.text != myText) return false

                val elementScope = PsiTreeUtil.findFirstParent(element) { it -> it is JassFun || it is JassGlob }
                if (elementScope == null) return false

                if (nodeScope === elementScope) return true
                if (nodeScope is JassGlob || elementScope is JassGlob) return true

                //if (nodeScope is JassGlob && elementScope is JassFun) return true
                //if (nodeScope is JassFun && elementScope is JassGlob) return true

                //if (nodeScope == elementScope || nodeScope is JassGlob) return true

                //if (nodeScope is JassFun && elementScope is JassGlob) return true

                //


                return false
            }

            override fun resolveDeclaration(): List<PsiElement> {
                StubIndex.getElements(
                    VAR_NAME_KEY,
                    myText,
                    project,
                    GlobalSearchScope.allScope(project),
                    JassNamedElement::class.java,
                ).forEach {
                    if (it.parent !is JassVarDef && it.parent !is JassParam) return@forEach
                    val itScope = PsiTreeUtil.findFirstParent(it) { it -> it is JassFun || it is JassGlob }
                    if (nodeScope === itScope) {
                        result.add(it)
                        return@forEach
                    }
                    //
                    //result.add(it)
                }
                return result
            }
        }
    }
}
