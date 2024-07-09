package raft.war.language.jass.action.jass2angelscript

import raft.war.language.angelscript.openapi.fileTypes.AngelScriptFileType
import raft.war.language.jass.action.Jass2AnyAction
import raft.war.language.jass.action.Jass2AnyVisitor

class Jass2AngelScriptAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2AngelScriptVisitor()

    override val targetExtension: String
        get() = AngelScriptFileType.EXTENSION
}
