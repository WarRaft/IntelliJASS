package guru.xgm.jass.openapi.actionSystem.jass2angelscript;

// BoolexprFunc@ c

import com.intellij.psi.PsiElement;
import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;
import java.util.Objects;

public class Jass2AngelScriptVisitor extends JassVisitor {

    StringBuffer stringBuffer = new StringBuffer();

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

    private void exprSexpr(List<JassExpr> list, String op) {
        list.get(0).accept(this);
        stringBuffer.append(" ").append(op).append(" ");
        list.get(1).accept(this);
    }

    private boolean text(@Nullable PsiElement pe) {
        if (pe == null) return false;
        System.out.print("\ntext:" + pe.getText());

        stringBuffer.append(pe.getText());
        return true;
    }

    @Override
    public void visitGlob(@NotNull JassGlob o) {
        stringBuffer.append("// globals\n");
        o.acceptChildren(this);
        stringBuffer.append("// endglobals\n");
    }

    @Override
    public void visitGvar(@NotNull JassGvar o) {
        final var type = typename(o.getTypeName().getText());
        final var name = Objects.requireNonNull(o.getGvarName()).getText();

        if (o.getConstant() != null) stringBuffer.append("const ");
        if (o.getArray() == null) {
            stringBuffer.append(type).append(" ").append(name);
            final var expr = o.getExpr();
            if (expr != null) {
                stringBuffer.append(" = ");
                expr.accept(this);
            }
        } else {
            stringBuffer.append("array<").append(type).append("> ").append(name);
        }
        semi();
    }

    @Override
    public void visitFuncCall(@NotNull JassFuncCall o) {
        System.out.print("\nFuncCall:" + o.getText());
        super.visitFuncCall(o);
    }

    @Override
    public void visitArrayAccess(@NotNull JassArrayAccess o) {
        System.out.print("\nArrayAccess:" + o.getText());
        super.visitArrayAccess(o);
    }

    @Override
    public void visitFuncAsCode(@NotNull JassFuncAsCode o) {
        System.out.print("\nFuncAsCode:" + o.getText());
        super.visitFuncAsCode(o);
    }

    @Override
    public void visitPrimExpr(@NotNull JassPrimExpr o) {
        System.out.print("\nPrimExpr:" + o.getText());
        if (text(o.getTrue())) return;
        if (text(o.getFalse())) return;
        if (text(o.getNull())) return;
        if (text(o.getId())) return;
        if (text(o.getIntval())) return;
        if (text(o.getStrval())) return;
        final var hex = o.getHexval();
        if (hex != null) {
            stringBuffer.append(hex.getText().replace("$", "0x"));
            return;
        }
        final var real = o.getRealval();
        if (real != null) {
            stringBuffer.append(real.getText()).append("f");
            return;
        }
        o.acceptChildren(this);
    }

    @Override
    public void visitPlusExpr(@NotNull JassPlusExpr o) {
        exprSexpr(o.getExprList(), "+");
    }

    @Override
    public void visitMinusExpr(@NotNull JassMinusExpr o) {
        exprSexpr(o.getExprList(), "-");
    }

    @Override
    public void visitMulExpr(@NotNull JassMulExpr o) {
        exprSexpr(o.getExprList(), "*");
    }

    @Override
    public void visitDivExpr(@NotNull JassDivExpr o) {
        exprSexpr(o.getExprList(), "/");
    }

}
