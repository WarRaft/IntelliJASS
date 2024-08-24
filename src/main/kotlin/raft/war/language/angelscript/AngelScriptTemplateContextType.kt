package raft.war.language.angelscript

import com.intellij.codeInsight.template.TemplateActionContext
import com.intellij.codeInsight.template.TemplateContextType

open class AngelScriptTemplateContextType protected constructor() : TemplateContextType(AngelScriptLanguage.NAME) {
    override fun isInContext(templateActionContext: TemplateActionContext): Boolean =
        (templateActionContext.file.language is AngelScriptLanguage)
}
