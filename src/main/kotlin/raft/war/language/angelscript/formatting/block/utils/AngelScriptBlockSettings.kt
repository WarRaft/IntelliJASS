package raft.war.language.angelscript.formatting.block.utils

import com.intellij.formatting.FormattingContext
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import raft.war.language.angelscript.formatting.AngelScriptCodeStyleSettings
import raft.war.language.angelscript.AngelScriptLanguage

class AngelScriptBlockSettings(formattingContext: FormattingContext) {
    val code: CodeStyleSettings = formattingContext.codeStyleSettings
    val common: CommonCodeStyleSettings = code.getCommonSettings(AngelScriptLanguage.instance.id)
    val custom: AngelScriptCodeStyleSettings = code.getCustomSettings(AngelScriptCodeStyleSettings::class.java)
}
