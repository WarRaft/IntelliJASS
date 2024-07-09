package raft.war.language.jass.action.jass2typescript

import raft.war.language.jass.action.Jass2AnyAction
import raft.war.language.jass.action.Jass2AnyVisitor
import raft.war.language.jass.action.jass2javascript.Jass2JavaScriptVisitor

class Jass2TypeScriptAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2JavaScriptVisitor(true)

    override val targetExtension: String
        get() = "ts"
}
