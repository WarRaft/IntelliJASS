package guru.xgm.language.jass.openapi.actionSystem.convert.jass2typescript;

import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction;
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import guru.xgm.language.jass.openapi.actionSystem.convert.jass2javascript.Jass2JavaScriptVisitor;
import org.jetbrains.annotations.NotNull;

public class Jass2TypeScriptAction extends Jass2AnyAction {

    public Jass2TypeScriptAction() {
        super();
    }

    @Override
    public @NotNull Jass2AnyVisitor getVisitor() {
        return new Jass2JavaScriptVisitor(true);
    }

    @Override
    public @NotNull String getTargetExtension() {
        return "ts";
    }
}
