package guru.xgm.language.jass.openapi.actionSystem.convert.jass2angelscript;

import guru.xgm.language.angelscript.openapi.fileTypes.AngelScriptFileType;
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction;
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import org.jetbrains.annotations.NotNull;

public class Jass2AngelScriptAction extends Jass2AnyAction {

    public Jass2AngelScriptAction() {
        super();
    }

    @Override
    public @NotNull Jass2AnyVisitor getVisitor() {
        return new Jass2AngelScriptVisitor();
    }

    @Override
    public @NotNull String getTargetExtension() {
        return AngelScriptFileType.EXTENSION;
    }
}
