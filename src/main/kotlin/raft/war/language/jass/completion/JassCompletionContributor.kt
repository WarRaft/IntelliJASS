package raft.war.language.jass.completion

import com.intellij.codeInsight.AutoPopupController
import com.intellij.codeInsight.completion.*
import com.intellij.codeInsight.lookup.AutoCompletionPolicy
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.codeInsight.template.TemplateManager
import com.intellij.codeInsight.template.impl.TextExpression
import com.intellij.icons.AllIcons
import com.intellij.openapi.progress.ProgressManager
import com.intellij.patterns.PlatformPatterns
import com.intellij.psi.PsiErrorElement
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.psi.util.elementType
import com.intellij.util.ProcessingContext
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.JassTypes.IF
import raft.war.language.jass.psi.file.JassFile
import raft.war.language.jass.psi.funName.KEY

// https://intellij-icons.jetbrains.design/

internal class JassCompletionContributor : CompletionContributor() {

    init {
        extend(
            CompletionType.BASIC, PlatformPatterns.psiElement(),
            object : CompletionProvider<CompletionParameters>() {
                public override fun addCompletions(
                    parameters: CompletionParameters,
                    context: ProcessingContext,
                    result: CompletionResultSet
                ) {

                }
            }
        )

    }

    override fun fillCompletionVariants(parameters: CompletionParameters, result: CompletionResultSet) {
        val current = parameters.originalPosition
        var parent = current?.parent
        if (parent is PsiErrorElement) parent = parent.parent


        val project = parameters.position.project

        val manager = TemplateManager.getInstance(parameters.position.project)

        fun atStart(builder: LookupElementBuilder) =
            result.addElement(PrioritizedLookupElement.withPriority(builder, 10.0))

        // root
        if (parent is JassFile) {
            result.addElement(LookupElementBuilder.create("globals").withInsertHandler { ctx, _ ->
                val tpl = manager.createTemplate("", "", "\n\$END\$\nendglobals")
                tpl.isToReformat = true
                manager.startTemplate(ctx.editor, tpl)
            })

            result.addElement(LookupElementBuilder.create("function").withInsertHandler { ctx, _ ->
                val tpl = manager.createTemplate(
                    "",
                    "",
                    " \$NAME\$ takes \$TAKES\$ returns \$RETURNS\$\n\$END\$\nendfunction"
                )
                tpl.isToReformat = true
                tpl.addVariable("NAME", TextExpression("name"), true)
                tpl.addVariable("TAKES", TextExpression("nothing"), true)
                tpl.addVariable("RETURNS", TextExpression("nothing"), true)
                manager.startTemplate(ctx.editor, tpl)
            })
        }

        // in func
        val prev = PsiTreeUtil.skipWhitespacesBackward(current)
        val next = PsiTreeUtil.skipWhitespacesForward(current)
        var isCallPrev = false
        if (prev is JassStmt && prev.callStmt != null) {
            if (prev.callStmt!!.funCall == null) {
                isCallPrev = true
            }
        }

        val isFunStmt = parent is JassFunStmt && !isCallPrev
        val isIfToken = current.elementType == IF

        // if ... endif
        if (isFunStmt || isIfToken) {
            val cp = current?.parent
            if (cp is JassIfStmt && cp.then == null) {
                atStart(LookupElementBuilder.create("if")
                    .withTailText(" ... endif")
                    .withInsertHandler { ctx, _ ->
                        val tpl = manager.createTemplate("", "", " \$EXPR\$ then\n\$END\$\nendif")
                        tpl.addVariable("EXPR", TextExpression("true"), true)
                        tpl.isToReformat = true
                        manager.startTemplate(ctx.editor, tpl)
                    })
            }
        }

        if (isFunStmt) {
            atStart(LookupElementBuilder.create("loop")
                .withTailText(" ... endloop")
                .withInsertHandler { ctx, _ ->
                    val tpl = manager.createTemplate("", "", "\n\$END\$\nendloop")
                    tpl.isToReformat = true
                    manager.startTemplate(ctx.editor, tpl)
                })

            if (PsiTreeUtil.findFirstParent(parent) { it is JassLoopStmt } != null) {
                atStart(LookupElementBuilder.create("exitwhen").withInsertHandler { ctx, _ ->
                    val tpl = manager.createTemplate("", "", " \$EXPR\$\n\$END\$")
                    tpl.addVariable("EXPR", TextExpression("true"), true)
                    tpl.isToReformat = true
                    manager.startTemplate(ctx.editor, tpl)
                })
            }

            if (parent!!.parent is JassIfStmt) {
                atStart(LookupElementBuilder.create("else")
                    .withInsertHandler { ctx, _ ->
                        ctx.document.deleteString(ctx.startOffset, ctx.tailOffset)
                        val tpl = manager.createTemplate("", "", "else\n\$END\$")
                        tpl.isToReformat = true
                        manager.startTemplate(ctx.editor, tpl)
                    })
            }


            when (parent.parent) {
                is JassIfStmt, is JassElseStmt, is JassElseIfStmt -> {
                    atStart(LookupElementBuilder.create("elseif")
                        .withInsertHandler { ctx, _ ->
                            ctx.document.deleteString(ctx.startOffset, ctx.tailOffset)
                            val tpl = manager.createTemplate("", "", "elseif \$EXPR\$ then\n\$END\$")
                            tpl.addVariable("EXPR", TextExpression("true"), true)
                            tpl.isToReformat = true
                            manager.startTemplate(ctx.editor, tpl)
                        })
                }
            }

            atStart(LookupElementBuilder.create("call ").withInsertHandler { ctx, _ ->
                AutoPopupController.getInstance(parameters.position.project).scheduleAutoPopup(ctx.editor)
            })
        }

        // function
        if (!isIfToken) {
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
                        if (head !is JassFunHead) return@forEach

                        val takes: MutableList<String> = mutableListOf()

                        val take = head.funTake
                        if (take != null) {
                            take.paramList?.paramList?.forEach { takes.add(it.id.text) }
                        }

                        val b = LookupElementBuilder
                            .create(name)
                            .withTypeText("function", AllIcons.Ide.HectorOn, false)
                            .withTypeIconRightAligned(true)
                            .withPsiElement(head)
                            .withTailText(" ${take?.text} ${head.funRet?.text}")
                            .withIcon(AllIcons.Nodes.Function)
                            .withInsertHandler { ctx, _ ->
                                val document = ctx.document

                                // add call
                                if ((parent is JassFunStmt || next is JassFunStmt) && !isCallPrev
                                ) {
                                    document.insertString(ctx.startOffset, "call ")
                                }

                                // tail
                                val s = "(${takes.joinToString()})"
                                document.insertString(ctx.tailOffset, s)
                                ctx.editor.caretModel.moveToOffset(ctx.tailOffset - s.length + 1)
                            }

                        b.withAutoCompletionPolicy(AutoCompletionPolicy.SETTINGS_DEPENDENT)

                        result.addElement(b)
                    }
                    true
                },
                scope
            )
        }


        //super.fillCompletionVariants(parameters, result)
    }
}
