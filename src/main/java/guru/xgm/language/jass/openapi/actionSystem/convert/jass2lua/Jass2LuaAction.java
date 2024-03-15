package guru.xgm.language.jass.openapi.actionSystem.convert.jass2lua;

import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyAction;
import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import org.jetbrains.annotations.NotNull;

public class Jass2LuaAction extends Jass2AnyAction {

    public Jass2LuaAction() {
        super();
    }

    @Override
    public @NotNull Jass2AnyVisitor getVisitor() {
        return new Jass2LuaVisitor();
    }

    @Override
    public @NotNull String getTargetExtension() {
        return ".lua";
    }
}
