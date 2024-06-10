@file:Suppress("PropertyName")

package raft.war.language.angelscript.formatting

import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CustomCodeStyleSettings

class AngelScriptCodeStyleSettings(container: CodeStyleSettings) :
    CustomCodeStyleSettings("AngelScriptCodeStyleSettings", container) {
    @JvmField
    var AT_ENUM_EQ: Boolean = false
}

