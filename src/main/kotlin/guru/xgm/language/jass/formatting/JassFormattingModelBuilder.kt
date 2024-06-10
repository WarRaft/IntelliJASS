package guru.xgm.language.jass.formatting

import com.intellij.formatting.FormattingContext
import com.intellij.formatting.FormattingModel
import com.intellij.formatting.FormattingModelBuilder
import com.intellij.formatting.FormattingModelProvider
import guru.xgm.language.jass.formatting.block.JassRootBlock

internal class JassFormattingModelBuilder : FormattingModelBuilder {
    override fun createModel(formattingContext: FormattingContext): FormattingModel {
        val code = formattingContext.codeStyleSettings

        val jass = code.getCustomSettings(JassCodeStyleSettings::class.java)
        return FormattingModelProvider
            .createFormattingModelForPsiFile(
                formattingContext.containingFile,
                JassRootBlock(formattingContext.node, code, jass),
                code
            )
    }
}
