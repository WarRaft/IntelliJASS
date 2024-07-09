package raft.war.language.jass.action.jass2lua

import raft.war.language.jass.action.Jass2AnyAction
import raft.war.language.jass.action.Jass2AnyVisitor

class Jass2LuaAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2LuaVisitor()

    override val targetExtension: String
        get() = "lua"
}
