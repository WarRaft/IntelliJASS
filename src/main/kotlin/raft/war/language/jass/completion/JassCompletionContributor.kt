package raft.war.language.jass.completion

import com.intellij.codeInsight.AutoPopupController
import com.intellij.codeInsight.completion.CompletionContributor
import com.intellij.codeInsight.completion.CompletionParameters
import com.intellij.codeInsight.completion.CompletionResultSet
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.icons.AllIcons
import com.intellij.openapi.progress.ProgressManager
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.psi.util.elementType
import raft.war.ide.utils.IdeCompletionData
import raft.war.ide.utils.IdeCompletionData.TemplateVariable
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.JassTypes.*
import raft.war.language.jass.psi.file.JassFile
import raft.war.language.jass.psi.funName.FUN_NAME_KEY

// https://intellij-icons.jetbrains.design/

internal class JassCompletionContributor : CompletionContributor() {

    override fun fillCompletionVariants(parameters: CompletionParameters, result: CompletionResultSet) {
        val data = IdeCompletionData(parameters, result)

        root(data)

        val isPrevCall = false

        if (parameters.isAutoPopup && data.current.elementType != ID && !isPrevCall) return

        val inFunStmt = (data.parent is JassFunBody || data.next is JassFunBody) && !isPrevCall

        ifThenElse(data, inFunStmt)
        loop(data, inFunStmt)
        function(data)
    }

    private fun loop(data: IdeCompletionData, inFunStmt: Boolean) {
        if (!inFunStmt) return

        // loop
        data.addStart(
            LookupElementBuilder.create("loop")
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
            AutoPopupController.getInstance(data.parameters.position.project).scheduleAutoPopup(ctx.editor)
        })

        data.addStart(LookupElementBuilder.create("debug").withInsertHandler { ctx, _ ->
            ctx.document.insertString(ctx.tailOffset, " call ")
            ctx.editor.caretModel.moveToOffset(ctx.tailOffset)
            AutoPopupController.getInstance(data.parameters.position.project).scheduleAutoPopup(ctx.editor)
        })
    }

    private fun ifThenElse(data: IdeCompletionData, inFunStmt: Boolean) {
        // if
        if (inFunStmt || data.current.elementType == IF) {
            data.addStart(
                LookupElementBuilder.create("if")
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
                data.addStart(
                    LookupElementBuilder.create("else")
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
            data.addStart(
                LookupElementBuilder.create("elseif")
                    .withInsertHandler { ctx, _ ->
                        data.templateInsert(
                            ctx,
                            "elseif \$EXPR\$ then\n\$END\$",
                            TemplateVariable("EXPR", "true")
                        )
                    })
        }
    }

    private fun root(data: IdeCompletionData) {
        if (data.parent !is JassFile) return
        data.result.addElement(LookupElementBuilder.create("globals").withInsertHandler { ctx, _ ->
            data.templateInsert(ctx, "globals\n\$END\$\nendglobals")
        })
        data.result.addElement(LookupElementBuilder.create("function").withInsertHandler { ctx, _ ->
            data.templateInsert(
                ctx, "function \$NAME\$ takes \$TAKES\$ returns \$RETURNS\$\n\$END\$\nendfunction",
                TemplateVariable("NAME", "name"),
                TemplateVariable("TAKES", "nothing"),
                TemplateVariable("RETURNS", "nothing")
            )
        })
    }

    private fun function(data: IdeCompletionData) {
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

                    val take: JassTakez?
                    val ret: JassReturnz?
                    val name: String

                    when (val p = func.parent) {
                        is JassFunHead -> {
                            take = p.takez
                            ret = p.returnz
                            name = p.funName!!.text
                        }

                        is JassNativ -> {
                            take = p.takez
                            ret = p.returnz
                            name = p.funName!!.text
                        }

                        else -> return@forEach
                    }

                    val takeList: MutableList<String> = mutableListOf()
                    /*
                    take?.paramList?.paramList?.let {
                        for (p in it) takeList.add(p.text)
                    }

                     */

                    data.result.addElement(
                        LookupElementBuilder
                            .create(func)
                            .withTypeText(if (ret?.typeName != null) ret.typeName.text else null)
                            .withTypeIconRightAligned(true)
                            .withPsiElement(head)
                            .withTailText("(${takeList.joinToString(", ")})")
                            .withIcon(AllIcons.Nodes.Function)
                            .withInsertHandler { ctx, _ ->
                                // add call
                                val call =
                                    if ((data.parent is JassFunBody || data.next is JassFunBody || data.prev is JassFunBody)) "call " else ""

                                // add variables
                                val tslist: MutableList<String> = mutableListOf()
                                val tvlist: MutableList<TemplateVariable> = mutableListOf()

                                /*
                                take?.paramList?.paramList?.forEach {
                                    val vname = "P${it.varName.text}"
                                    tslist.add("\$$vname\$")
                                    tvlist.add(TemplateVariable(vname, it.varName.text))
                                }

                                 */

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
