package guru.xgm.language.jass.openapi.actionSystem.convert.jass2angelscript

import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptFileType
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor

class Jass2AngelScriptAction : Jass2AnyAction() {
    override val visitor: Jass2AnyVisitor
        get() = Jass2AngelScriptVisitor()

    override val targetExtension: String
        get() = AngelScriptFileType.EXTENSION
}
