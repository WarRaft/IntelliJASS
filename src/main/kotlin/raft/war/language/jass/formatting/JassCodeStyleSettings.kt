package raft.war.language.jass.formatting

import com.intellij.psi.codeStyle.CodeStyleSettings
import com.intellij.psi.codeStyle.CustomCodeStyleSettings

@Suppress("PropertyName")
class JassCodeStyleSettings(container: CodeStyleSettings) :
    CustomCodeStyleSettings("JassCodeStyleSettings", container) {

    @JvmField
    var AT_TYPE_DECL_EXTENDS: Boolean = false

    @JvmField
    var AT_TYPE_DECL_TYPE_RIGHT: Boolean = false

    @JvmField
    var AT_TYPE_DECL_TYPE_BASE_RIGHT: Boolean = false

    @JvmField
    var AT_NATIVE_DECL_NATIVE: Boolean = false

    @JvmField
    var AT_NATIVE_DECL_NAME: Boolean = false

    @JvmField
    var AT_NATIVE_DECL_NAME_RIGHT: Boolean = false

    @JvmField
    var AT_NATIVE_DECL_TAKES: Boolean = false

    @JvmField
    var AT_NATIVE_DECL_ARGUMENT: Boolean = false

    @JvmField
    var AT_NATIVE_DECL_RETURNS: Boolean = false

    @JvmField
    var AT_GVAR_TYPE: Boolean = false

    @JvmField
    var AT_GVAR_TYPE_RIGHT: Boolean = false

    @JvmField
    var AT_GVAR_ARRAY: Boolean = false

    @JvmField
    var AT_GVAR_NAME: Boolean = false

    @JvmField
    var AT_GVAR_NAME_RIGHT: Boolean = false

    @JvmField
    var AT_GVAR_ASSIGN: Boolean = false
}
