package guru.xgm.language.jass.openapi.actionSystem.convert.jass2lua

import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor

class Jass2LuaAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2LuaVisitor()

    override val targetExtension: String
        get() = "lua"
}
