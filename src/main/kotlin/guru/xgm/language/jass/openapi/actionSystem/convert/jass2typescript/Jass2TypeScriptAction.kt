package guru.xgm.language.jass.openapi.actionSystem.convert.jass2typescript

import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor
import guru.xgm.language.jass.openapi.actionSystem.convert.jass2javascript.Jass2JavaScriptVisitor

class Jass2TypeScriptAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2JavaScriptVisitor(true)

    override val targetExtension: String
        get() = "ts"
}
