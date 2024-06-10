package guru.xgm.language.angelscript.codeInsight.template

import com.intellij.codeInsight.template.TemplateActionContext
import com.intellij.codeInsight.template.TemplateContextType
import guru.xgm.language.angelscript.lang.AngelScriptLanguage

open class AngelScriptTemplateContextType protected constructor() : TemplateContextType(AngelScriptLanguage.NAME) {
    override fun isInContext(templateActionContext: TemplateActionContext): Boolean =
        (templateActionContext.file.language is AngelScriptLanguage)
}
