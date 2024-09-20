package raft.war.language.jass.inspection

import com.intellij.lang.annotation.AnnotationHolder
import com.intellij.lang.annotation.Annotator
import com.intellij.lang.annotation.HighlightSeverity
import com.intellij.openapi.editor.colors.TextAttributesKey
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiPolyVariantReference
import com.intellij.psi.ResolveResult
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import raft.war.ide.library.JassSyntheticLibrary
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_FUN_BLIZZARD
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_FUN_NATIVE
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_FUN_USER
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_VAR_ARGUMENT
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_VAR_GLOBAL
import raft.war.language.jass.highlighter.JassSyntaxHighlighterBase.Companion.JASS_VAR_LOCAL
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassFunCall
import raft.war.language.jass.psi.JassGvar
import raft.war.language.jass.psi.JassLvarStmt
import raft.war.language.jass.psi.JassNamedElement
import raft.war.language.jass.psi.JassNativ
import raft.war.language.jass.psi.JassParam
import raft.war.language.jass.psi.JassTypeName
import raft.war.language.jass.psi.JassVarDef
import raft.war.language.jass.psi.JassVarName
import raft.war.language.jass.psi.funName.FUN_NAME_KEY


internal class JassAnnotator : Annotator {
    override fun annotate(element: PsiElement, holder: AnnotationHolder) {
        val lib = JassSyntheticLibrary.fromProject(element.project)

        fun inSdkFunIndex(elem: PsiElement): Boolean {
            if (lib == null) return false

            for (fn in StubIndex.getElements(
                FUN_NAME_KEY,
                elem.text,
                element.project,
                GlobalSearchScope.allScope(element.project),
                JassNamedElement::class.java,
            )) {
                if (lib.contains(fn.containingFile.virtualFile)) return true
            }
            return false
        }

        when (element) {
            is JassTypeName -> {
                holder
                    .newSilentAnnotation(HighlightSeverity.INFORMATION)
                    .range(element.textRange)
                    .textAttributes(JassSyntaxHighlighterBase.JASS_TYPE_NAME).create()
            }

            is JassNativ -> {
                val name = element.funName
                if (name != null) {
                    val inSdkElem = lib?.contains(element.containingFile.virtualFile) == true
                    val inSdkDecl = inSdkFunIndex(name)

                    holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(name.textRange)
                        .textAttributes(JASS_FUN_NATIVE).create()

                    if (!inSdkElem && inSdkDecl) {
                        holder
                            .newAnnotation(HighlightSeverity.ERROR, "Native function overriden")
                            .range(name.textRange)
                            .create()
                    }
                }
            }

            is JassFun -> {
                val name = element.funHead.funName
                if (name != null) {
                    val inSdkElem = lib?.contains(element.containingFile.virtualFile) == true
                    val inSdkDecl = inSdkFunIndex(name)

                    holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(name.textRange)
                        .textAttributes(if (inSdkDecl) JASS_FUN_BLIZZARD else JASS_FUN_USER).create()

                    if (!inSdkElem && inSdkDecl) {
                        holder
                            .newAnnotation(HighlightSeverity.ERROR, "SDK function overriden")
                            .range(name.textRange)
                            .create()
                    }
                }
            }

            is JassFunCall -> {
                val name = element.funName
                val ref = name.reference
                val refElems: Array<out ResolveResult> =
                    if (ref is PsiPolyVariantReference) ref.multiResolve(true) else emptyArray()

                if (refElems.isEmpty()) {
                    holder
                        .newAnnotation(HighlightSeverity.ERROR, "Function not exists")
                        .range(name.textRange)
                        .create()
                }

                if (refElems.size == 1) {
                    val refElem = refElems.first().element

                    val tk: TextAttributesKey = if (refElem?.parent is JassNativ) {
                        JASS_FUN_NATIVE
                    } else {
                        if (inSdkFunIndex(name)) JASS_FUN_BLIZZARD else JASS_FUN_USER
                    }

                    holder
                        .newSilentAnnotation(HighlightSeverity.INFORMATION)
                        .range(name.textRange)
                        .textAttributes(tk).create()

                }
            }

            is JassVarName -> {
                val parent = element.parent
                var tk: TextAttributesKey? = null

                val ref = element.reference
                val refElems: Array<out ResolveResult> =
                    if (ref is PsiPolyVariantReference) ref.multiResolve(true) else emptyArray()

                when (parent) {
                    is JassVarDef -> when (parent.parent) {
                        is JassGvar -> tk = JASS_VAR_GLOBAL
                        is JassLvarStmt -> tk = JASS_VAR_LOCAL
                    }

                    is JassParam -> tk = JASS_VAR_ARGUMENT

                    else -> {
                        when (refElems.size) {
                            0 -> {
                                holder
                                    .newAnnotation(HighlightSeverity.ERROR, "Variable doesn’t exist")
                                    .range(element.textRange)
                                    .create()
                            }

                            1 -> {
                                val refElem = refElems.first().element
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
