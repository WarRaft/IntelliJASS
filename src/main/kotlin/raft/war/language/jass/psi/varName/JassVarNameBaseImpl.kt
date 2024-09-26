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

    private fun funLast(fn: JassFun, name: String): JassVarName? {
        var out: JassVarName? = null

        fn.funHead.funTake?.paramList?.paramList?.forEach {
            if (name == it.varName.text) {
                out = it.varName
            }
        }

        fn.funBody.stmtList.forEach {
            val l = it.lvarStmt
            if (l == null) return@forEach
            if (name == l.varDef.varName.text) {
                out = l.varDef.varName
            }
        }

        return out
    }

    private fun inGlobal(scope: PsiElement, name: String): Boolean = when (scope) {
        is JassGlob -> true
        is JassFun -> funLast(scope, name) == null
        else -> false
    }

    private fun nodeStubs(): Collection<JassNamedElement> = StubIndex.getElements(
        VAR_NAME_KEY,
        text,
        project,
        GlobalSearchScope.allScope(project),
        JassNamedElement::class.java,
    )

    override fun getReference(): PsiReference {
        val nodeText = this.text
        val result = OrderedSet<PsiElement>()
        val nodeScope = PsiTreeUtil.findFirstParent(node.psi) { it -> it is JassFun || it is JassGlob }
        val nodeInGlobal = if (nodeScope == null) false else inGlobal(nodeScope, nodeText)

        return object : JassReferenceBase(this, TextRange(0, textLength)) {
            override fun handleElementRename(newElementName: String): PsiElement = setName(newElementName)

            /**
             *  [element] is current cursor target
             */
            override fun isReferenceTo(element: PsiElement): Boolean {

                if (nodeScope == null) return false
                if (element !is JassVarName || element.text != nodeText) return false

                val elementScope = PsiTreeUtil.findFirstParent(element) { it -> it is JassFun || it is JassGlob }
                if (elementScope == null) return false

                if (nodeScope === elementScope) return true

                return nodeInGlobal && inGlobal(elementScope, nodeText)
            }

            /**
             *  [node] is current cursor target
             */
            override fun resolveDeclaration(): List<PsiElement> {
                if (nodeScope == null) return result

                fun globIterator(it: JassNamedElement) {
                    val itScope = PsiTreeUtil.findFirstParent(it) { it -> it is JassFun || it is JassGlob }
                    if (itScope !is JassGlob) return
                    if (it.parent is JassVarDef) result.add(it)
                }

                when (nodeScope) {
                    is JassGlob -> {
                        nodeStubs().forEach(::globIterator)
                    }

                    is JassFun -> {
                        val l = funLast(nodeScope, nodeText)
                        if (l == null) {
                            nodeStubs().forEach(::globIterator)
                        } else {
                            result.add(l)
                            return result
                        }
                    }
                }

                return result
            }
        }
    }
}
