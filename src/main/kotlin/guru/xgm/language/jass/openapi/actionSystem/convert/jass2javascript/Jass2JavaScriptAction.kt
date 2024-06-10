package guru.xgm.language.jass.openapi.actionSystem.convert.jass2javascript

import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor

class Jass2JavaScriptAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2JavaScriptVisitor(false)

    override val targetExtension: String
        get() = "js"
}
