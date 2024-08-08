package raft.war.language.jass

import com.intellij.codeInsight.template.TemplateActionContext
import com.intellij.codeInsight.template.TemplateContextType

open class JassTemplateContextType protected constructor() : TemplateContextType(JassLanguage.NAME) {
    override fun isInContext(templateActionContext: TemplateActionContext): Boolean =
        (templateActionContext.file.language is JassLanguage)
}
