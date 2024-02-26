package guru.xgm.jass.openapi.actionSystem.jass2angelscript;


import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;

import java.util.Objects;

public class Jass2AngelScriptVisitor extends JassVisitor {

    StringBuffer stringBuffer = new StringBuffer();

    private void s(String s) {
        stringBuffer.append(s);
    }

    private void semi() {
        stringBuffer.append(";\n");
    }

    private String typename(String type) {
        return switch (type) {
            case "integer" -> "int";
            case "real" -> "float";
            case "boolean" -> "bool";
            default -> type;
        };
    }

    @Override
    public void visitGlob(@NotNull JassGlob o) {
        s("// globals\n");
        o.acceptChildren(this);
        s("// endglobals\n");
    }

    @Override
    public void visitGvar(@NotNull JassGvar o) {
        final var type = typename(o.getTypeName().getText());
        final var name = Objects.requireNonNull(o.getGvarName()).getText();

        if (o.getConstant() != null) s("const ");
        if (o.getArray() == null) {
            s(type + " " + name);
            final var expr = o.getExpr();
            if (expr != null) {
                s(" = ");
                expr.accept(this);
            }
        } else {
            s("array<" + type + "> " + name + " = array<" + type + ">()");
        }
        semi();
    }

    @Override
    public void visitFuncCall(@NotNull JassFuncCall o) {
        System.out.print("\nFuncCall:"+o.getText());
        super.visitFuncCall(o);
    }

    @Override
    public void visitPrimVal(@NotNull JassPrimVal o) {
        System.out.print("\nPrimVal:"+o.getText());
        s(o.getText());
        super.visitPrimVal(o);
    }

    @Override
    public void visitPrimExpr(@NotNull JassPrimExpr o) {
        System.out.print("\nPrimExpr:"+o.getText());
        //s(o.getText());
        //super.visitPrimExpr(o);
        o.acceptChildren(this);
    }

    @Override
    public void visitDivExpr(@NotNull JassDivExpr o) {
        final var expr = o.getExprList();
        expr.get(0).accept(this);
        s(" / ");
        expr.get(1).accept(this);
    }
}
