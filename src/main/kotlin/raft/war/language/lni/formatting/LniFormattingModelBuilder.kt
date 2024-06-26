package raft.war.language.lni.formatting

import com.intellij.formatting.FormattingContext
import com.intellij.formatting.FormattingModel
import com.intellij.formatting.FormattingModelBuilder
import com.intellij.formatting.FormattingModelProvider
import raft.war.language.lni.formatting.block.LniRootBlock

class LniFormattingModelBuilder : FormattingModelBuilder {
    override fun createModel(formattingContext: FormattingContext): FormattingModel {
        val code = formattingContext.codeStyleSettings

        //val settings = code.getCustomSettings(LniCodeStyleSettings::class.java)
        return FormattingModelProvider
            .createFormattingModelForPsiFile(
                formattingContext.containingFile,
                LniRootBlock(formattingContext.node, code),
                code
            )
    }
}
