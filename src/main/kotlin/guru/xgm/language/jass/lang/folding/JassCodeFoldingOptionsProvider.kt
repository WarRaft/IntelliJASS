package guru.xgm.language.jass.lang.folding

import com.intellij.application.options.editor.CodeFoldingOptionsProvider
import com.intellij.openapi.options.BeanConfigurable
import guru.xgm.language.jass.lang.JassLanguage
import guru.xgm.language.jass.lang.folding.JassCodeFoldingSettings.Companion.instance

class JassCodeFoldingOptionsProvider : BeanConfigurable<JassCodeFoldingSettings?>(instance, JassLanguage.NAME),
    CodeFoldingOptionsProvider {
    init {
        val settings = instance
        checkBox("Globals", settings::isFoldGlobals, settings::isFoldGlobals.setter)
        checkBox("Function", settings::isFoldFunction, settings::isFoldFunction.setter)
        checkBox("If", settings::isFoldIf, settings::isFoldIf.setter)
        checkBox("Loop", settings::isFoldLoop, settings::isFoldLoop.setter)
    }
}
