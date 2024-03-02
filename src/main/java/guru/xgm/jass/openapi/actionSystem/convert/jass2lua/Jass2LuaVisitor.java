package guru.xgm.jass.openapi.actionSystem.convert.jass2lua;

import guru.xgm.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import guru.xgm.jass.psi.JassExpr;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class Jass2LuaVisitor extends Jass2AnyVisitor {
    @Override
    public void appendSingleLineComment(String comment) {
        stringBuffer.append("--").append(comment).append("\n");
    }

    @Override
    public void appendVar(boolean constant, boolean global, boolean array, @NotNull String type, String name, @Nullable JassExpr expr) {

    }
}
