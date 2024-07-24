package raft.war.language.jass

import com.intellij.codeInsight.AutoPopupController
import com.intellij.codeInsight.completion.*
import com.intellij.codeInsight.lookup.AutoCompletionPolicy
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.codeInsight.template.TemplateManager
import com.intellij.icons.AllIcons
import com.intellij.patterns.PlatformPatterns
import com.intellij.psi.PsiWhiteSpace
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.util.PsiTreeUtil
import com.intellij.util.ProcessingContext
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.file.JassFile
import raft.war.language.jass.psi.funName.KEY

// https://intellij-icons.jetbrains.design/

internal class JassCompletionContributor : CompletionContributor() {
    init {

        extend(CompletionType.BASIC, PlatformPatterns.psiElement().withSuperParent(2, JassFile::class.java),
            object : CompletionProvider<CompletionParameters>() {
                override fun addCompletions(
                    parameters: CompletionParameters,
                    context: ProcessingContext,
                    result: CompletionResultSet
                ) {
                    result.addElement(
                        LookupElementBuilder.create("globals").withInsertHandler { ctx, _ ->
                            val manager = TemplateManager.getInstance(parameters.position.project)
                            val tpl = manager.createTemplate("", "", "\n\$END\$\nendglobals")
                            tpl.isToReformat = true
                            manager.startTemplate(ctx.editor, tpl)
                        }
                    )
                }
            })

        extend(CompletionType.BASIC, PlatformPatterns.psiElement()
            .withParent(JassFunStmt::class.java)
            .andNot(
                PlatformPatterns.psiElement().afterLeaf("call")
            ),
            object : CompletionProvider<CompletionParameters>() {
                override fun addCompletions(
                    parameters: CompletionParameters,
                    context: ProcessingContext,
                    result: CompletionResultSet
                ) {
                    result.addElement(
                        LookupElementBuilder.create("call ").withInsertHandler { ctx, _ ->
                            AutoPopupController.getInstance(parameters.position.project)
                                .scheduleAutoPopup(ctx.editor)
                        }
                    )
                }
            })

        extend(
            CompletionType.BASIC, PlatformPatterns.psiElement(),
            object : CompletionProvider<CompletionParameters>() {
                public override fun addCompletions(
                    parameters: CompletionParameters,
                    context: ProcessingContext,
                    result: CompletionResultSet
                ) {
                    val project = parameters.position.project
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

                                    .withInsertHandler { context, _ ->
                                        val document = context.document

                                        // add call
                                        val prevElem = parameters.originalFile.findElementAt(context.startOffset - 1)
                                        val prev = PsiTreeUtil.skipWhitespacesBackward(prevElem)
                                        val next = PsiTreeUtil.skipWhitespacesForward(prevElem)
                                        run {
                                            if (next is JassFunStmt) {
                                                document.insertString(context.startOffset, "call ")
                                                return@run
                                            }
                                            val bp = prev?.parent
                                            if (bp is JassFunStmt) {
                                                if (prev is JassStmt) {
                                                    val call = prev.callStmt
                                                    if (call != null && call.funCall == null) return@run
                                                }
                                            } else if (bp !is JassFun) return@run
                                            document.insertString(context.startOffset, "call ")
                                        }


                                        // tail
                                        val s = "(${takes.joinToString()})"
                                        document.insertString(context.tailOffset, s)
                                        context.editor.caretModel.moveToOffset(context.tailOffset - s.length + 1)

                                    }

                                b.withAutoCompletionPolicy(AutoCompletionPolicy.SETTINGS_DEPENDENT)

                                result.addElement(b)
                            }
                            true
                        },
                        scope
                    )
                }
            }
        )
    }


}
