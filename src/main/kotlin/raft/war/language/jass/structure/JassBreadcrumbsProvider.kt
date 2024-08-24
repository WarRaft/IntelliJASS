package raft.war.language.jass.structure

import com.intellij.lang.Language
import com.intellij.psi.PsiElement
import com.intellij.ui.breadcrumbs.BreadcrumbsProvider
import raft.war.language.jass.JassLanguage
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassLoopStmt

class JassBreadcrumbsProvider : BreadcrumbsProvider {
    override fun getLanguages(): Array<Language> {
        return arrayOf(JassLanguage.instance)
    }

    override fun getElementInfo(element: PsiElement): String {
        return when (element) {
            is JassFun -> "function ${element.funHead.funName?.text}"
            is JassLoopStmt -> "loop"

            /*
            is LuaBlock -> {
                val blockParent = element.parent
                when (blockParent) {
                    is LuaFuncBody -> {
                        val parent2 = blockParent.parent
                        when (parent2) {
                            is LuaClassMethodDef -> "${parent2.classMethodName.text}${parent2.paramSignature}"
                            is LuaClosureExpr -> "function${parent2.paramSignature}"
                            is LuaFuncDef -> "function${parent2.paramSignature}"
                            is LuaLocalFuncDef -> "local function ${parent2.name}"
                            else -> "<?>"
                        }
                    }

                    is LuaIfStat -> {
                        val prevVisibleLeaf = PsiTreeUtil.prevVisibleLeaf(element)
                        when (prevVisibleLeaf?.node?.elementType) {
                            LuaTypes.ELSE -> "else"
                            LuaTypes.THEN -> {
                                val expr = LuaPsiTreeUtil.skipWhitespacesAndCommentsBackward(prevVisibleLeaf)!!
                                val prefix = LuaPsiTreeUtil.skipWhitespacesAndCommentsBackward(expr)!!

                                "${prefix.text} ${cutText(expr.text)} then"
                            }

                            else -> "if"
                        }
                    }

                    is LuaForAStat -> "for"
                    is LuaForBStat -> "for"
                    is LuaRepeatStat -> "repeat"
                    is LuaWhileStat -> "while"
                    else -> "<?>"
                }
            }

             */

            else -> element.text
        }
    }

    override fun acceptElement(element: PsiElement): Boolean {
        return when (element) {
            is JassFun -> true
            is JassLoopStmt -> true
            else -> false
        }
    }

}
