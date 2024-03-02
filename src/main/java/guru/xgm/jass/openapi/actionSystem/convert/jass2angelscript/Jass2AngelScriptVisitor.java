package guru.xgm.jass.openapi.actionSystem.convert.jass2angelscript;

import guru.xgm.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import guru.xgm.jass.psi.JassExpr;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Objects;

public class Jass2AngelScriptVisitor extends Jass2AnyVisitor {

    private String getConvertedTypeName(String type) {
        return switch (type) {
            case "integer" -> "int";
            case "real" -> "float";
            case "boolean" -> "bool";
            default -> type;
        };
    }

    private void appendVarExpr(@Nullable JassExpr expr) {
        if (expr == null) return;
        if (Objects.equals(expr.getText(), "null")) return;
        stringBuffer.append(" = ");
        expr.accept(this);
    }

    @Override
    public void appendVar(boolean constant, boolean global, boolean array, @NotNull String type, String name, @Nullable JassExpr expr) {
        if (constant) stringBuffer.append("const ");
        final String t = getConvertedTypeName(type);
        if (array) {
            stringBuffer.append("array<").append(t).append("> ").append(name);
        } else {
            stringBuffer.append(t).append(" ").append(name);
            appendVarExpr(expr);
        }
        stringBuffer.append(";\n");
    }
}
