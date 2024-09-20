package raft.war.language.jass.completion

import com.intellij.codeInsight.AutoPopupController
import com.intellij.codeInsight.completion.CompletionContributor
import com.intellij.codeInsight.completion.CompletionParameters
import com.intellij.codeInsight.completion.CompletionResultSet
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.icons.AllIcons
import com.intellij.openapi.progress.ProgressManager
import com.intellij.psi.PsiErrorElement
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.psi.util.elementType
import raft.war.ide.utils.IdeCompletionData
import raft.war.ide.utils.IdeCompletionData.TemplateVariable
import raft.war.ide.utils.IdePsiTreeUtil
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.JassTypes.*
import raft.war.language.jass.psi.file.JassFile
import raft.war.language.jass.psi.funName.FUN_NAME_KEY

// https://intellij-icons.jetbrains.design/

internal class JassCompletionContributor : CompletionContributor() {

    private fun isPrevCall(data: IdeCompletionData): Boolean {
        var prev = data.prev
        if (prev.elementType == ID) {
            prev = IdePsiTreeUtil.skipWhitespacesBackward(prev?.prevSibling)
        }

        if (prev is JassFunBody) prev = prev.lastChild
        if (prev?.lastChild is PsiErrorElement) return false

        return prev is JassStmt && prev.callStmt != null && prev.callStmt!!.funCall == null
    }

    override fun fillCompletionVariants(parameters: CompletionParameters, result: CompletionResultSet) {
        // ---
        val data = IdeCompletionData(parameters, result)

        // ---
        val isPrevCall = isPrevCall(data)

        if (parameters.isAutoPopup && data.current.elementType != ID && !isPrevCall) return

        // globals, function
        if (data.parent is JassFile) {
            result.addElement(LookupElementBuilder.create("globals").withInsertHandler { ctx, _ ->
                data.templateInsert(ctx, "globals\n\$END\$\nendglobals")
            })
            result.addElement(LookupElementBuilder.create("function").withInsertHandler { ctx, _ ->
                data.templateInsert(
                    ctx, "function \$NAME\$ takes \$TAKES\$ returns \$RETURNS\$\n\$END\$\nendfunction",
                    TemplateVariable("NAME", "name"),
                    TemplateVariable("TAKES", "nothing"),
                    TemplateVariable("RETURNS", "nothing")
                )
            })
        }

        // --
        val inFunStmt = (data.parent is JassFunBody || data.next is JassFunBody) && !isPrevCall

        // if
        if (inFunStmt || data.current.elementType == IF) {
            data.addStart(LookupElementBuilder.create("if")
                .withTailText(" ... endif")
                .withInsertHandler { ctx, _ ->
                    data.templateInsert(
                        ctx,
                        "if \$EXPR\$ then\n\$END\$\nendif",
                        TemplateVariable("EXPR", "true")
                    )
                })
        }

        // else
        when (data.parent!!.parent) {
            is JassIfStmt, is JassElseIfStmt -> {
                data.addStart(LookupElementBuilder.create("else")
                    .withInsertHandler { ctx, _ ->
                        data.templateInsert(ctx, "else\n\$END\$")
                    })
            }
        }

        // elseif
        if (data.current.elementType == ELSE || when (data.parent.parent) {
                is JassIfStmt, is JassElseStmt, is JassElseIfStmt -> true
                else -> false
            }
        ) {
            data.addStart(LookupElementBuilder.create("elseif")
                .withInsertHandler { ctx, _ ->
                    data.templateInsert(
                        ctx,
                        "elseif \$EXPR\$ then\n\$END\$",
                        TemplateVariable("EXPR", "true")
                    )
                })
        }

        if (inFunStmt) {
            // loop
            data.addStart(LookupElementBuilder.create("loop")
                .withTailText(" ... endloop")
                .withInsertHandler { ctx, _ ->
                    data.templateInsert(ctx, "loop\n\$END\$\nendloop")
                })

            // exitwhen
            if (PsiTreeUtil.findFirstParent(data.parent) { it is JassLoopStmt } != null) {
                data.addStart(LookupElementBuilder.create("exitwhen").withInsertHandler { ctx, _ ->
                    data.templateInsert(
                        ctx,
                        "exitwhen \$EXPR\$\n\$END\$",
                        TemplateVariable("EXPR", "true")
                    )
                })
            }

            // call
            data.addStart(LookupElementBuilder.create("call").withInsertHandler { ctx, _ ->
                ctx.document.insertString(ctx.tailOffset, " ")
                ctx.editor.caretModel.moveToOffset(ctx.tailOffset)
                AutoPopupController.getInstance(parameters.position.project).scheduleAutoPopup(ctx.editor)
            })

            data.addStart(LookupElementBuilder.create("debug").withInsertHandler { ctx, _ ->
                ctx.document.insertString(ctx.tailOffset, " call ")
                ctx.editor.caretModel.moveToOffset(ctx.tailOffset)
                AutoPopupController.getInstance(parameters.position.project).scheduleAutoPopup(ctx.editor)
            })
        }

        this.function(data, isPrevCall)
    }

    private fun function(data: IdeCompletionData, isPrevCall: Boolean) {
        if (data.parent is JassFile) return

        if (PsiTreeUtil.findFirstParent(data.parent) { it is JassFunHead || it is JassNativ } != null) return

        val scope = GlobalSearchScope.allScope(data.project)
        StubIndex.getInstance().processAllKeys(
            FUN_NAME_KEY,
            { stubKey ->
                StubIndex.getElements(
                    FUN_NAME_KEY,
                    stubKey,
                    data.project,
                    scope,
                    JassNamedElement::class.java,
                ).forEach { func ->
                    ProgressManager.checkCanceled()

                    val head = func.parent

                    val take: JassFunTake?
                    val ret: JassFunRet?
                    val name: String

                    when (val p = func.parent) {
                        is JassFunHead -> {
                            take = p.funTake
                            ret = p.funRet
                            name = p.funName!!.text
                        }

                        is JassNativ -> {
                            take = p.funTake
                            ret = p.funRet
                            name = p.funName!!.text
                        }

                        else -> return@forEach
                    }

                    data.result.addElement(LookupElementBuilder
                        .create(func)
                        .withTypeText("function", AllIcons.Ide.HectorOn, false)
                        .withTypeIconRightAligned(true)
                        .withPsiElement(head)
                        .withTailText(" ${take?.text} ${ret?.text}")
                        .withIcon(AllIcons.Nodes.Function)
                        .withInsertHandler { ctx, _ ->
                            // add call
                            val call =
                                if ((data.parent is JassFunBody || data.next is JassFunBody || data.prev is JassFunBody) && !isPrevCall) "call " else ""

                            // add variables
                            val tslist: MutableList<String> = mutableListOf()
                            val tvlist: MutableList<TemplateVariable> = mutableListOf()

                            take?.paramList?.paramList?.forEach {
                                val vname = "P${it.varName.text}"
                                tslist.add("\$$vname\$")
                                tvlist.add(TemplateVariable(vname, it.varName.text))
                            }

                            val eol = if (call.isEmpty()) "" else "\n"

                            data.templateInsert(
                                ctx,
                                "$call$name(${tslist.joinToString(", ")})$eol\$END\$",
                                *tvlist.toTypedArray()
                            )
                        })
                }
                true
            },
            scope
        )
    }
}
