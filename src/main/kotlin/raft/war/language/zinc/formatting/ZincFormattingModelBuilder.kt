package raft.war.language.zinc.formatting

import com.intellij.formatting.FormattingContext
import com.intellij.formatting.FormattingModel
import com.intellij.formatting.FormattingModelBuilder
import com.intellij.formatting.FormattingModelProvider
import raft.war.language.zinc.formatting.block.ZincRootBlock

internal class ZincFormattingModelBuilder : FormattingModelBuilder {
    override fun createModel(formattingContext: FormattingContext): FormattingModel {
        val code = formattingContext.codeStyleSettings

        val zinc = code.getCustomSettings(ZincCodeStyleSettings::class.java)
        return FormattingModelProvider
            .createFormattingModelForPsiFile(
                formattingContext.containingFile,
                ZincRootBlock(formattingContext.node, code, zinc),
                code
            )
    }
}
