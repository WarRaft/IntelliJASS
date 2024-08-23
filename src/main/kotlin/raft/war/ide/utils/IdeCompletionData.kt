package raft.war.ide.utils

import com.intellij.codeInsight.completion.CompletionParameters
import com.intellij.codeInsight.completion.CompletionResultSet
import com.intellij.codeInsight.completion.InsertionContext
import com.intellij.codeInsight.completion.PrioritizedLookupElement
import com.intellij.codeInsight.lookup.LookupElementBuilder
import com.intellij.codeInsight.template.TemplateManager
import com.intellij.codeInsight.template.impl.TextExpression
import com.intellij.psi.PsiElement
import com.intellij.psi.PsiErrorElement

class IdeCompletionData(parameters: CompletionParameters, val result: CompletionResultSet) {

    val current = parameters.originalPosition
    val prev = IdePsiTreeUtil.skipWhitespacesBackward(current)
    val next = IdePsiTreeUtil.skipWhitespacesForward(current)

    val project = parameters.position.project
    val parent: PsiElement?

    init {
        var parent = current?.parent
        if (parent is PsiErrorElement) parent = parent.parent
        this.parent = parent
    }

    private val templateManager: TemplateManager = TemplateManager.getInstance(project)

    data class TemplateVariable(val name: String, val expr: String)

    fun templateInsert(ctx: InsertionContext, text: String, vararg vrs: TemplateVariable) {
        ctx.document.deleteString(ctx.startOffset, ctx.tailOffset)
        val tpl = templateManager.createTemplate("", "", text)
        tpl.isToReformat = true
        for (vr in vrs) tpl.addVariable(vr.name, TextExpression(vr.expr), true)
        templateManager.startTemplate(ctx.editor, tpl)
    }

    fun addStart(builder: LookupElementBuilder, priority: Double = 10.0) =
        result.addElement(PrioritizedLookupElement.withPriority(builder, priority))

}
