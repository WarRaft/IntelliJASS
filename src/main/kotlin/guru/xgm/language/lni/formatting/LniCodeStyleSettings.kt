package guru.xgm.language.lni.formatting

import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CustomCodeStyleSettings

@Suppress("PropertyName")
class LniCodeStyleSettings(container: CodeStyleSettings) :
    CustomCodeStyleSettings("LniCodeStyleSettings", container) {
    @JvmField
    var AT_PROPERTY_EQ: Boolean = false
}
