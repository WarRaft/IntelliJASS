package guru.xgm.language.angelscript.formatting.block.utils

import com.intellij.formatting.FormattingContext
import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CommonCodeStyleSettings
import guru.xgm.language.angelscript.formatting.AngelScriptCodeStyleSettings
import guru.xgm.language.angelscript.lang.AngelScriptLanguage

class AngelScriptBlockSettings(formattingContext: FormattingContext) {
    @JvmField
    val code: CodeStyleSettings = formattingContext.codeStyleSettings

    @JvmField
    val common: CommonCodeStyleSettings = code.getCommonSettings(AngelScriptLanguage.instance.id)

    @JvmField
    val custom: AngelScriptCodeStyleSettings = code.getCustomSettings(AngelScriptCodeStyleSettings::class.java)
}
