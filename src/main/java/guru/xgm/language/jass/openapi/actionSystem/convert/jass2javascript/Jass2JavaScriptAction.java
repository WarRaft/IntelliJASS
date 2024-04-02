package guru.xgm.language.jass.openapi.actionSystem.convert.jass2javascript;

import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction;
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import org.jetbrains.annotations.NotNull;

public class Jass2JavaScriptAction extends Jass2AnyAction {

    public Jass2JavaScriptAction() {
        super();
    }

    @Override
    public @NotNull Jass2AnyVisitor getVisitor() {
        return new Jass2JavaScriptVisitor(false);
    }

    @Override
    public @NotNull String getTargetExtension() {
        return "js";
    }
}
