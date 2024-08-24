package raft.war.language.jass.formatting

import com.intellij.formatting.FormattingContext
import com.intellij.formatting.FormattingModel
import com.intellij.formatting.FormattingModelBuilder
import com.intellij.formatting.FormattingModelProvider

internal class JassFormattingModelBuilder : FormattingModelBuilder {
    override fun createModel(formattingContext: FormattingContext): FormattingModel {
        val code = formattingContext.codeStyleSettings
        val jass = code.getCustomSettings(JassCodeStyleSettings::class.java)
        return FormattingModelProvider
            .createFormattingModelForPsiFile(
                formattingContext.containingFile,
                JassBlock(
                    JassBlockData(
                        node = formattingContext.node,
                        code = code,
                        jass = jass,
                        indent = null,
                    )
                ),
                code
            )
    }
}
