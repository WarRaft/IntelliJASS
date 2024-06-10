@file:Suppress("PropertyName")

package guru.xgm.language.angelscript.formatting

import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CustomCodeStyleSettings
import lombok.experimental.FieldNameConstants

class AngelScriptCodeStyleSettings(container: CodeStyleSettings) :
    CustomCodeStyleSettings("AngelScriptCodeStyleSettings", container) {
    @JvmField
    var AT_ENUM_EQ: Boolean = false
}

