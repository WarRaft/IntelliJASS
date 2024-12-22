package raft.war.language.jass

import com.intellij.codeInsight.highlighting.CodeBlockSupportHandler
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiRecursiveElementVisitor
import com.intellij.psi.formatter.FormatterUtil.isOneOf
import com.intellij.psi.util.PsiTreeUtil
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.JassTypes.*

// https://plugins.jetbrains.com/docs/intellij/additional-minor-features.html#recognizing-complex-multi-block-expressions

class JassCodeBlockSupportHandler : CodeBlockSupportHandler {
    override fun getCodeBlockMarkerRanges(elementAtCursor: PsiElement): MutableList<TextRange> {
        val list: MutableList<TextRange> = mutableListOf()

        fun add(psiElement: PsiElement?) {
            if (psiElement == null) return
            list.add(psiElement.textRange)
        }

        val node = elementAtCursor.node

        // globals
        if (isOneOf(node, GLOBALS, ENDGLOBALS)) {
            val glob = PsiTreeUtil.findFirstParent(elementAtCursor) { it is JassGlob }
            if (glob is JassGlob) {
                add(glob.globals)
                add(glob.endglobals)
            }
            return list
        }

        // function
        if (isOneOf(node, FUNCTION, TAKES, RETURNS, RETURN, ENDFUNCTION)) {
            if (node.psi.parent is JassFunRef) return list

            val func = PsiTreeUtil.findFirstParent(elementAtCursor) { it is JassFun }
            if (func is JassFun) {
                add(func.funHead.function)
                add(func.endfunction)
                add(func.funHead.takez?.takes)
                add(func.funHead.returnz?.returns)

                val funcs: Collection<JassReturnStmt> =
                    PsiTreeUtil.collectElementsOfType(func, JassReturnStmt::class.java)
                funcs.forEach { add(it.`return`) }
            }
            return list
        }

        // loop
        if (isOneOf(node, LOOP, EXITWHEN, ENDLOOP)) {
            val loop = PsiTreeUtil.findFirstParent(elementAtCursor) { it is JassLoopStmt }
            if (loop is JassLoopStmt) {
                add(loop.loop)
                add(loop.endloop)

                loop.accept(object : PsiRecursiveElementVisitor() {
                    override fun visitElement(element: PsiElement) {
                        if (element is JassLoopStmt && element != loop) return
                        if (element is JassExitWhenStmt) {
                            add(element.exitwhen)
                            return
                        }
                        super.visitElement(element)
                        //element.acceptChildren(this)
                    }
                })
            }
        }

        // if
        if (isOneOf(node, IF, THEN, ELSE, ELSEIF, ENDIF)) {
            val `if` = PsiTreeUtil.findFirstParent(elementAtCursor) { it is JassIfStmt }
            if (`if` is JassIfStmt) {
                add(`if`.`if`)
                add(`if`.then)
                add(`if`.endif)
                `if`.accept(object : PsiRecursiveElementVisitor() {
                    override fun visitElement(element: PsiElement) {
                        if (element is JassIfStmt && element != `if`) return
                        if (element is JassElseStmt) {
                            add(element.`else`)
                        }
                        if (element is JassElseIfStmt) {
                            add(element.then)
                            add(element.elseif)
                        }
                        super.visitElement(element)
                    }
                })
            }
        }

        return list
    }

    override fun getCodeBlockRange(elementAtCursor: PsiElement): TextRange {
        //print("getCodeBlockRange: $elementAtCursor \n")
        return elementAtCursor.textRange
    }
}
