package raft.war.language.jass.inspection

import com.intellij.lang.annotation.AnnotationHolder
import com.intellij.lang.annotation.Annotator
import com.intellij.lang.annotation.HighlightSeverity
import com.intellij.lang.injection.InjectedLanguageManager
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.openapi.util.TextRange
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiPolyVariantReference
import com.intellij.psi.ResolveResult
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import raft.war.ide.library.JassSyntheticLibrary
import raft.war.language.jass.executeFuncName
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_FUN_BLIZZARD
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_FUN_NATIVE
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_FUN_USER
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_VAR_ARGUMENT
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_VAR_GLOBAL
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_VAR_LOCAL
import raft.war.language.jass.psi.JassFunCall
import raft.war.language.jass.psi.JassFunHead
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.JassFunRef
import raft.war.language.jass.psi.JassGvar
import raft.war.language.jass.psi.JassLvarStmt
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.JassNativ
import raft.war.language.jass.psi.JassParam
import raft.war.language.jass.psi.JassStr
import raft.war.language.jass.psi.JassTypeName
import raft.war.language.jass.psi.JassVarDef
import raft.war.language.jass.psi.JassVarName
import raft.war.language.jass.psi.funName.FUN_NAME_KEY


internal class JassAnnotator : Annotator {
    private fun refs(element: PsiElement): Array<out ResolveResult> {
        val ref = element.reference
        return if (ref is PsiPolyVariantReference) ref.multiResolve(true) else emptyArray()
    }

    override fun annotate(element: PsiElement, holder: AnnotationHolder) {
        val lib = JassSyntheticLibrary.fromProject(element.project)
        val injectedLanguageManager = InjectedLanguageManager.getInstance(element.project)
        val isInject = injectedLanguageManager.isInjectedFragment(element.containingFile)

        fun inSdkFunIndex(name: String): Boolean {
            if (lib == null) return false

            for (fn in StubIndex.getElements(
                FUN_NAME_KEY,
                name,
                element.project,
                GlobalSearchScope.allScope(element.project),
                JassNamedElement::class.java,
            )) {
                if (lib.contains(fn.containingFile.virtualFile)) return true
            }
            return false
        }

        fun funAnnotate(name: String, range: TextRange, refs: Array<out ResolveResult>) {
            when (refs.size) {
                0 -> {
                    holder
                        .newAnnotation(HighlightSeverity.ERROR, "Function doesn’t exist")
                        .range(range)
                        .create()
                }

                1 -> {
                    val target = refs.first().element
                    holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(range)
                        .textAttributes(
                            if (target?.parent is JassNativ) JASS_FUN_NATIVE else if (inSdkFunIndex(name)) JASS_FUN_BLIZZARD else JASS_FUN_USER
                        ).create()
                }

                else -> {
                    holder
                        .newAnnotation(HighlightSeverity.WARNING, "Function has multiple declarations")
                        .range(range)
                        .create()
                }
            }
        }

        when (element) {
            is JassStr -> {
                val funName = executeFuncName(element)
                if (funName != null) {
                    for (ref in element.references) {
                        funAnnotate(
                            funName,
                            TextRange.create(element.textRange.startOffset + 1, element.textRange.endOffset - 1),
                            if (ref is PsiPolyVariantReference) ref.multiResolve(true) else emptyArray()
                        )
                    }

                }
            }

            is JassTypeName -> {
                val id = element.id
                var h = false

                if (id == null) {
                    h = true
                } else {
                    val refs = this.refs(element)
                    if (refs.isNotEmpty()) {
                        h = true
                    } else {
                        holder
                            .newAnnotation(HighlightSeverity.ERROR, "Type not exist")
                            .range(element.textRange)
                            .create()
                    }
                }

                if (h) {
                    holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(element.textRange)
                        .textAttributes(JassSyntaxHighlighterBase.JASS_TYPE_NAME).create()
                }
            }

            is JassFunName -> {
                val parent = element.parent

                when (parent) {
                    is JassNativ -> {
                        val inSdkElem = lib?.contains(parent.containingFile.virtualFile) == true
                        val inSdkDecl = inSdkFunIndex(element.text)

                        holder
                            .newSilentAnnotation(HighlightSeverity.INFORMATION)
                            .range(element.textRange)
                            .textAttributes(JASS_FUN_NATIVE).create()

                        if (!isInject && !inSdkElem && inSdkDecl) {
                            holder
                                .newAnnotation(HighlightSeverity.ERROR, "Native function overriden")
                                .range(element.textRange)
                                .create()
                        }
                    }

                    is JassFunCall, is JassFunRef -> funAnnotate(element.text, element.textRange, refs(element))

                    is JassFunHead -> {
                        val inSdkElem = lib?.contains(element.containingFile.virtualFile) == true
                        val inSdkDecl = inSdkFunIndex(element.text)

                        holder
                            .newSilentAnnotation(HighlightSeverity.INFORMATION)
                            .range(element.textRange)
                            .textAttributes(if (inSdkDecl) JASS_FUN_BLIZZARD else JASS_FUN_USER).create()

                        if (!isInject && !inSdkElem && inSdkDecl) {
                            holder
                                .newAnnotation(HighlightSeverity.ERROR, "SDK function overriden")
                                .range(element.textRange)
                                .create()
                        }
                    }
                }
            }

            is JassVarName -> {
                val parent = element.parent
                var tk: TextAttributesKey? = null

                val refs = this.refs(element)

                when (parent) {
                    is JassVarDef -> when (parent.parent) {
                        is JassGvar -> tk = JASS_VAR_GLOBAL
                        is JassLvarStmt -> tk = JASS_VAR_LOCAL
                    }

                    is JassParam -> tk = JASS_VAR_ARGUMENT

                    else -> {
                        when (refs.size) {
                            0 -> {
                                holder
                                    .newAnnotation(HighlightSeverity.ERROR, "Variable doesn’t exist")
                                    .range(element.textRange)
                                    .create()
                            }

                            1 -> {
                                val refElem = refs.first().element
                                when (refElem?.parent) {
                                    is JassVarDef -> when (refElem.parent.parent) {
                                        is JassGvar -> tk = JASS_VAR_GLOBAL
                                        is JassLvarStmt -> tk = JASS_VAR_LOCAL
                                    }

                                    is JassParam -> {
                                        tk = JASS_VAR_ARGUMENT
                                    }
                                }
                            }

                            else -> {
                                holder
                                    .newAnnotation(HighlightSeverity.WARNING, "Variable has multiple declarations")
                                    .range(element.textRange)
                                    .create()
                            }
                        }

                    }
                }

                if (tk != null) {
                    holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(element.textRange)
                        .textAttributes(tk).create()
                }

            }
        }

    }
}
