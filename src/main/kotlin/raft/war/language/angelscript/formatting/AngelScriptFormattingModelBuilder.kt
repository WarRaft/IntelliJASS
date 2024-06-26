package raft.war.language.angelscript.formatting

import com.intellij.formatting.FormattingContext
import com.intellij.formatting.FormattingModel
import com.intellij.formatting.FormattingModelBuilder
import com.intellij.formatting.FormattingModelProvider
import raft.war.language.angelscript.formatting.block.AngelScriptBlock
import raft.war.language.angelscript.formatting.block.utils.AngelScriptBlockSettings

internal class AngelScriptFormattingModelBuilder : FormattingModelBuilder {
    override fun createModel(formattingContext: FormattingContext): FormattingModel {
        val settings = AngelScriptBlockSettings(formattingContext)

        return FormattingModelProvider
            .createFormattingModelForPsiFile(
                formattingContext.containingFile,
                AngelScriptBlock(formattingContext.node, null, null, settings),
                settings.code
            )
    }
}
