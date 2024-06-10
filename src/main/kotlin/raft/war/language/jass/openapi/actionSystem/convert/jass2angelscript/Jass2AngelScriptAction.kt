package raft.war.language.jass.openapi.actionSystem.convert.jass2angelscript

import raft.war.language.angelscript.openapi.fileTypes.AngelScriptFileType
import raft.war.language.jass.openapi.actionSystem.convert.Jass2AnyAction
import raft.war.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor

class Jass2AngelScriptAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2AngelScriptVisitor()

    override val targetExtension: String
        get() = AngelScriptFileType.EXTENSION
}
