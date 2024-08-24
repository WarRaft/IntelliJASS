package raft.war.language.angelscript.folding

import com.intellij.application.options.editor.CodeFoldingOptionsProvider
import com.intellij.openapi.options.BeanConfigurable

class AngelScriptCodeFoldingOptionsProvider :
    BeanConfigurable<AngelScriptCodeFoldingSettings?>(AngelScriptCodeFoldingSettings.instance, "AngelScript"),
    CodeFoldingOptionsProvider {
    init {
        val settings = instance
        checkBox("Enum", { settings.isFoldEnum }, { foldEnum: Boolean? -> settings.isFoldEnum = foldEnum!! })
    }
}
