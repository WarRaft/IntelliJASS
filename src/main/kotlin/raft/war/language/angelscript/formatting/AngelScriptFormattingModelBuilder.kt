package raft.war.language.angelscript.formatting

import com.intellij.formatting.FormattingContext
import com.intellij.formatting.FormattingModel
import com.intellij.formatting.FormattingModelBuilder
import com.intellij.formatting.FormattingModelProvider
import raft.war.language.angelscript.formatting.AngelScriptBlock
import raft.war.language.angelscript.AngelScriptLanguage.Companion.instance

internal class AngelScriptFormattingModelBuilder : FormattingModelBuilder {
    override fun createModel(formattingContext: FormattingContext): FormattingModel {
        val code = formattingContext.codeStyleSettings
        val ass = code.getCustomSettings(AngelScriptCodeStyleSettings::class.java)

        return FormattingModelProvider
            .createFormattingModelForPsiFile(
                formattingContext.containingFile,
                AngelScriptBlock(
                    node = formattingContext.node,
                    code = code,
                    common = code.getCommonSettings(instance.id),
                    ass = ass,
                ),
                code
            )
    }
}
