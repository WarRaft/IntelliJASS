package raft.war.language.jass

import com.intellij.codeInsight.completion.*
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.icons.AllIcons
import com.intellij.patterns.PlatformPatterns
import com.intellij.psi.search.GlobalSearchScope
import com.intellij.psi.stubs.StubIndex
import com.intellij.util.ProcessingContext
import raft.war.language.jass.psi.JassFun
import raft.war.language.jass.psi.JassFunName
import raft.war.language.jass.psi.funName.KEY

internal class JassCompletionContributor : CompletionContributor() {
    init {
        extend(
            CompletionType.BASIC, PlatformPatterns.psiElement(),
            object : CompletionProvider<CompletionParameters>() {
                public override fun addCompletions(
                    parameters: CompletionParameters,
                    context: ProcessingContext,
                    resultSet: CompletionResultSet
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
                                JassFunName::class.java,
                            ).forEach { name ->
                                val fn = name.parent
                                if (fn !is JassFun) return@forEach


                                resultSet.addElement(
                                    LookupElementBuilder
                                        .create(name)
                                        .withTypeText("function")
                                        .withPsiElement(fn)
                                        .withTailText(" ${fn.funTake?.text} ${fn.funRet?.text}")
                                        .withIcon(AllIcons.Nodes.Function)
                                        .withInsertHandler { context, _ ->
                                            //val document = context.document
                                            //document.insertString(context.tailOffset, "(arg1, arg2)")
                                            //context.editor.caretModel.moveToOffset(context.tailOffset - 7)
                                        }

                                )
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
