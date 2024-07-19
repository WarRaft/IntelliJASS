package raft.war.language.jass

import com.intellij.codeInsight.completion.*
import com.intellij.codeInsight.lookup.AutoCompletionPolicy
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.codeInsight.template.TemplateManager
import com.intellij.icons.AllIcons
import com.intellij.patterns.PlatformPatterns
import com.intellij.psi.PsiWhiteSpace
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.psi.util.elementType
import com.intellij.util.ProcessingContext
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.JassTypes.CALL
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
                            val templateManager = TemplateManager.getInstance(parameters.position.project)
                            val tpl = templateManager.createTemplate("", "", "\n\$END\$\nendglobals")
                            tpl.isToReformat = true
                            templateManager.startTemplate(ctx.editor, tpl)
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
                                        var before = parameters.originalFile.findElementAt(context.startOffset - 1)
                                        while (before is PsiWhiteSpace) {
                                            before = before.prevSibling
                                        }
                                        if (before.elementType != CALL && (before?.parent is JassFunStmt || before?.parent is JassFun)) {
                                            document.insertString(context.startOffset, "call ")
                                        }

                                        // tail
                                        val s = "(${takes.joinToString()})"
                                        document.insertString(context.tailOffset, s)
                                        context.editor.caretModel.moveToOffset(context.tailOffset - s.length + 1)

                                    }

                                b.withAutoCompletionPolicy(AutoCompletionPolicy.ALWAYS_AUTOCOMPLETE)

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
