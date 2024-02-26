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
    public void visitIfStmt(@NotNull JassIfStmt o) {
        System.out.print("\nIfStmt:" + o.getText());
        super.visitIfStmt(o);
    }

    @Override
    public void visitStmt(@NotNull JassStmt o) {
        o.acceptChildren(this);
    }

    @Override
    public void visitParamList(@NotNull JassParamList o) {
        final var list = o.getParamList();
        for (int i = 0; i < list.size(); i++) {
            final var param = list.get(i);
            final var type = param.getTypeName();
            if (type.getCode() != null) {
                stringBuffer.append("BoolexprFunc@");
            } else {
                stringBuffer.append(typename(type.getText()));
            }
            stringBuffer.append(' ').append(param.getId().getText());
            if (i < list.size() - 1) stringBuffer.append(", ");
        }
        super.visitParamList(o);
    }

    @Override
    public void visitFunTake(@NotNull JassFunTake o) {
        if (o.getNothing() != null) return;
        final var list = o.getParamList();
        if (list != null) list.accept(this);
    }

    @Override
    public void visitFun(@NotNull JassFun o) {
        final JassFunRet ret = o.getFunRet();
        if (ret != null) {
            if (ret.getNothing() != null) {
                stringBuffer.append("void");
            } else {
                final var tn = ret.getTypeName();
                if (tn != null) {
                    if (tn.getCode() != null) {
                        stringBuffer.append("BoolexprFunc@");
                    } else {
                        stringBuffer.append(typename(tn.getText()));
                    }
                }
            }
            stringBuffer.append(' ');
        }

        final var name = o.getId();
        if (name != null) stringBuffer.append(o.getId().getText());

        stringBuffer.append("(");
        final JassFunTake take = o.getFunTake();
        if (take != null) take.accept(this);
        stringBuffer.append("){\n");
        for (JassStmt stmt : o.getStmtList()) {
            stmt.accept(this);
        }
        stringBuffer.append("}\n");
    }

    @Override
    public void visitArgList(@NotNull JassArgList o) {
        final var list = o.getExprList();
        for (int i = 0; i < list.size(); i++) {
            list.get(i).accept(this);
            if (i < list.size() - 1) stringBuffer.append(", ");
        }
    }

    @Override
    public void visitFunCall(@NotNull JassFunCall o) {
        stringBuffer.append(o.getId().getText()).append("(");

        final var list = o.getArgList();
        if (list != null) list.accept(this);

        stringBuffer.append(")");
    }

    @Override
    public void visitArrayAccess(@NotNull JassArrayAccess o) {
        System.out.print("\nArrayAccess:" + o.getText());
    }

    @Override
    public void visitFuncAsCode(@NotNull JassFuncAsCode o) {
        stringBuffer.append("@").append(o.getId().getText());
    }

    @Override
    public void visitPrimExpr(@NotNull JassPrimExpr o) {
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
