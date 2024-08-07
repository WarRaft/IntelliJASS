package raft.war.language.jass.action.jass2javascript

import raft.war.language.jass.action.Jass2AnyAction
import raft.war.language.jass.action.Jass2AnyVisitor

class Jass2JavaScriptAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2JavaScriptVisitor(false)

    override val targetExtension: String
        get() = "js"
}
