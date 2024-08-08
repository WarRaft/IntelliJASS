package raft.war.language.jass.completion

import com.intellij.codeInsight.AutoPopupController
import com.intellij.codeInsight.completion.*
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.codeInsight.template.TemplateManager
import com.intellij.codeInsight.template.impl.TextExpression
import com.intellij.icons.AllIcons
import com.intellij.openapi.progress.ProgressManager
import com.intellij.psi.PsiErrorElement
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.psi.util.elementType
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.JassTypes.*
import raft.war.language.jass.psi.file.JassFile
import raft.war.language.jass.psi.funName.KEY

// https://intellij-icons.jetbrains.design/

internal class JassCompletionContributor : CompletionContributor() {

    private data class Variable(val name: String, val expr: String)

    override fun fillCompletionVariants(parameters: CompletionParameters, result: CompletionResultSet) {
        // ---
        val current = parameters.originalPosition

        if (parameters.isAutoPopup && current.elementType != ID) return

        var parent = current?.parent
        if (parent is PsiErrorElement) parent = parent.parent

        val project = parameters.position.project

        val manager = TemplateManager.getInstance(project)

        // ---
        fun template(ctx: InsertionContext, text: String, vararg vrs: Variable) {
            ctx.document.deleteString(ctx.startOffset, ctx.tailOffset)
            val tpl = manager.createTemplate("", "", text)
            tpl.isToReformat = true
            for (vr in vrs) tpl.addVariable(vr.name, TextExpression(vr.expr), true)
            manager.startTemplate(ctx.editor, tpl)
        }

        // globals, function
        if (parent is JassFile) {
            result.addElement(LookupElementBuilder.create("globals").withInsertHandler { ctx, _ ->
                template(ctx, "globals\n\$END\$\nendglobals")
            })
            result.addElement(LookupElementBuilder.create("function").withInsertHandler { ctx, _ ->
                template(
                    ctx, "function \$NAME\$ takes \$TAKES\$ returns \$RETURNS\$\n\$END\$\nendfunction",
                    Variable("NAME", "name"),
                    Variable("TAKES", "nothing"),
                    Variable("RETURNS", "nothing")
                )
            })
        }

        // ---
        fun atStart(builder: LookupElementBuilder) =
            result.addElement(PrioritizedLookupElement.withPriority(builder, 10.0))


        // ---
        val prev = PsiTreeUtil.skipWhitespacesBackward(current)
        var isCallPrev = false
        if (prev is JassStmt && prev.callStmt != null) {
            if (prev.callStmt!!.funCall == null) {
                isCallPrev = true
            }
        }

        // --
        val next = PsiTreeUtil.skipWhitespacesForward(current)
        val inFunStmt = (parent is JassFunBody || next is JassFunBody) && !isCallPrev

        // if
        if (inFunStmt || current.elementType == IF) {
            atStart(LookupElementBuilder.create("if")
                .withTailText(" ... endif")
                .withInsertHandler { ctx, _ ->
                    template(ctx, "if \$EXPR\$ then\n\$END\$\nendif", Variable("EXPR", "true"))
                })
        }

        // else
        if (parent!!.parent is JassIfStmt) {
            atStart(LookupElementBuilder.create("else")
                .withInsertHandler { ctx, _ ->
                    template(ctx, "else\n\$END\$")
                })
        }

        // elseif
        if (current.elementType == ELSE || when (parent.parent) {
                is JassIfStmt, is JassElseStmt, is JassElseIfStmt -> true
                else -> false
            }
        ) {
            atStart(LookupElementBuilder.create("elseif")
                .withInsertHandler { ctx, _ ->
                    template(ctx, "elseif \$EXPR\$ then\n\$END\$", Variable("EXPR", "true"))
                })
        }

        if (inFunStmt) {
            // loop
            atStart(LookupElementBuilder.create("loop")
                .withTailText(" ... endloop")
                .withInsertHandler { ctx, _ ->
                    template(ctx, "loop\n\$END\$\nendloop")
                })

            // exitwhen
            if (PsiTreeUtil.findFirstParent(parent) { it is JassLoopStmt } != null) {
                atStart(LookupElementBuilder.create("exitwhen").withInsertHandler { ctx, _ ->
                    template(ctx, "exitwhen \$EXPR\$\n\$END\$", Variable("EXPR", "true"))
                })
            }

            // call
            atStart(LookupElementBuilder.create("call ").withInsertHandler { ctx, _ ->
                AutoPopupController.getInstance(parameters.position.project).scheduleAutoPopup(ctx.editor)
            })
        }

        // functions
        var isFunList = parent !is JassFile
        if (isFunList && PsiTreeUtil.findFirstParent(parent) { it is JassFunHead } != null) isFunList = false

        if (isFunList) {
            val scope = GlobalSearchScope.allScope(project)
            StubIndex.getInstance().processAllKeys(
                KEY,
                { stubKey ->
                    StubIndex.getElements(
                        KEY,
                        stubKey,
                        project,
                        scope,
                        JassNamedElement::class.java,
                    ).forEach { name ->
                        ProgressManager.checkCanceled()

                        val head = name.parent

                        val take: JassFunTake?
                        val ret: JassFunRet?
                        when (val p = name.parent) {
                            is JassFunHead -> {
                                take = p.funTake
                                ret = p.funRet
                            }

                            is JassNativ -> {
                                take = p.funTake
                                ret = p.funRet
                            }

                            else -> return@forEach
                        }

                        result.addElement(LookupElementBuilder
                            .create(name)
                            .withTypeText("function", AllIcons.Ide.HectorOn, false)
                            .withTypeIconRightAligned(true)
                            .withPsiElement(head)
                            .withTailText(" ${take?.text} ${ret?.text}")
                            .withIcon(AllIcons.Nodes.Function)
                            .withInsertHandler { ctx, _ ->
                                val document = ctx.document

                                // add call
                                val addCall = (parent is JassFunBody || next is JassFunBody) && !isCallPrev
                                if (addCall) document.insertString(ctx.startOffset, "call ")

                                val tslist: MutableList<String> = mutableListOf()
                                val tvlist: MutableList<Variable> = mutableListOf()

                                // add variables
                                if (take != null) take.paramList?.paramList?.forEach {
                                    val vname = "P${it.id.text}"
                                    tslist.add("\$$vname\$")
                                    tvlist.add(Variable(vname, it.id.text))
                                }

                                val tpl = manager.createTemplate("", "", "(${tslist.joinToString(", ")})\n\$END\$")
                                for (vr in tvlist) tpl.addVariable(vr.name, TextExpression(vr.expr), true)

                                tpl.isToReformat = true
                                manager.startTemplate(ctx.editor, tpl)
                            })
                    }
                    true
                },
                scope
            )
        }
    }
}
