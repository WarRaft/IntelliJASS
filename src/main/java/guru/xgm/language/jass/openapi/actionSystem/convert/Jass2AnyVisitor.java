package guru.xgm.language.jass.openapi.actionSystem.convert;

import com.intellij.psi.PsiElement;
import guru.xgm.language.jass.psi.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

public abstract class Jass2AnyVisitor extends JassVisitor {
    public Jass2AnyVisitor() {
        keywords = new HashSet<>();
    }

    private static final String keywordSuffix = "_FUCKING_KEYWORD";

    public String getSafeName(String name) {
        if (keywords.contains(name)) return name + keywordSuffix;
        return name;
    }

    public void appendSafeName(String name) {
        stringBuffer.append(name);
        if (keywords.contains(name)) stringBuffer.append(keywordSuffix);
    }

    public HashSet<String> keywords;

    public StringBuffer stringBuffer = new StringBuffer();

    public void appendSingleLineComment(String comment) {
        stringBuffer.append("//").append(comment).append("\n");
    }

    public void appendBlockLineComment(String comment) {
        stringBuffer.append("/*").append(comment).append("*/");
    }

    public void appendStatementLineEnd() {
        stringBuffer.append(";\n");
    }

    public void appendString(@NotNull String str) {
        stringBuffer.append(str);
    }

    public void appendReal(@NotNull String real) {
        stringBuffer.append(real);
    }

    public void appendNull() {
        stringBuffer.append("null");
    }

    public void appendFunctionAsCode(@NotNull String name) {
        stringBuffer.append(name);
    }

    public @NotNull String getConvertedTypeName(@NotNull String type) {
        return type;
    }

    // --- typedef
    public void appendTypeDef(String name, String base) {
        appendSingleLineComment(name + " extends " + base);
    }

    @Override
    public void visitTypeDef(@NotNull JassTypeDef o) {
        final var name = o.getTypeName();
        final var base = o.getTypeNameBase();
        if (name == null || base == null) return;
        appendTypeDef(name.getText(), base.getText());
    }

    // --- globals
    @Override
    public void visitGlob(@NotNull JassGlob o) {
        appendSingleLineComment("globals");
        o.acceptChildren(this);
        appendSingleLineComment("endglobals");
    }

    // --- variable
    public abstract void appendVar(boolean constant, boolean global, boolean array, @NotNull String type, String name, @Nullable JassExpr expr);

    private void appendVarPrepare(boolean constant, boolean global, @NotNull JassVar var) {
        appendVar(constant, global, var.getArray() != null, getConvertedTypeName(var.getTypeName().getText()), getSafeName(var.getId().getText()), var.getExpr());
    }

    @Override
    public void visitGvar(@NotNull JassGvar o) {
        appendVarPrepare(o.getConstant() != null, true, o.getVar());
    }

    @Override
    public void visitLvarStmt(@NotNull JassLvarStmt o) {
        appendVarPrepare(false, false, o.getVar());
    }

    // --- function
    public abstract void appendFunction(@Nullable String returns, String name, @NotNull List<JassParam> params, @NotNull List<JassStmt> statements);

    @Override
    public void visitFun(@NotNull JassFun o) {
        final JassFunRet ret = o.getFunRet();
        final @Nullable var rettype = ret != null ? ret.getTypeName() : null;

        final var name = o.getId();

        final var take = o.getFunTake();
        List<JassParam> params = new ArrayList<>();
        if (take != null) {
            final var list = take.getParamList();
            if (list != null) params = list.getParamList();
        }

        appendFunction(
                ret == null || rettype == null || ret.getNothing() != null ? null : getConvertedTypeName(rettype.getText()),
                name == null ? "" : getSafeName(name.getText()),
                params,
                o.getStmtList()
        );
    }

    // --- statement

    // stmt list
    @Override
    public void visitStmt(@NotNull JassStmt o) {
        o.acceptChildren(this);
    }

    // return
    @Override
    public void visitReturnStmt(@NotNull JassReturnStmt o) {
        stringBuffer.append("return ");
        acceptExpr(o.getExpr());
        appendStatementLineEnd();
    }

    // set
    @Override
    public void visitSetStmt(@NotNull JassSetStmt o) {
        final var id = o.getId();
        if (id != null) appendSafeName(id.getText());
        final var arr = o.getArrayAccess();
        if (arr != null) arr.accept(this);
        final var expr = o.getExpr();
        if (expr != null) {
            stringBuffer.append(" = ");
            expr.accept(this);
        }
        appendStatementLineEnd();
    }

    // call
    @Override
    public void visitCallStmt(@NotNull JassCallStmt o) {
        if (o.getDebug() != null) appendBlockLineComment("debug");
        o.getFunCall().accept(this);
        appendStatementLineEnd();
    }

    @Override
    public void visitFunCall(@NotNull JassFunCall o) {
        final var name = o.getId().getText();
        final var list = o.getArgList();
        if (Objects.equals(name, "ExecuteFunc") && list != null) {
            final var exprs = list.getExprList();
            if (exprs.size() == 1) {
                final var expr = exprs.get(0).getFirstChild();
                if (expr.getNode().getElementType() == JassTypes.STRVAL) {
                    String fn = expr.getText().replaceFirst("^\"", "").replaceFirst("\"$", "");
                    if (fn.matches("^[a-zA-Z_][a-zA-Z_0-9]*$")) {
                        stringBuffer.append(fn).append("()");
                        return;
                    }
                }
            }
        }

        appendSafeName(name);
        stringBuffer.append("(");
        if (list != null) list.accept(this);

        stringBuffer.append(")");
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
    public void visitFuncAsCode(@NotNull JassFuncAsCode o) {
        appendFunctionAsCode(getSafeName(o.getId().getText()));
    }

    // ===============

    private boolean text(@Nullable PsiElement pe) {
        if (pe == null) return false;
        stringBuffer.append(pe.getText());
        return true;
    }

    @Override
    public void visitArrayAccess(@NotNull JassArrayAccess o) {
        stringBuffer.append(o.getId().getText()).append("[");
        final var expr = o.getExpr();
        if (expr != null) expr.accept(this);
        stringBuffer.append("]");
    }

    // --- expression
    public void acceptExpr(@Nullable JassExpr expr) {
        if (expr == null) return;
        expr.accept(this);
    }

    public void appendExprWithPrefixOp(@Nullable JassExpr expr, String op) {
        if (expr == null) return;
        stringBuffer.append(" ").append(op).append(" ");
        expr.accept(this);
    }

    public void appendExprListConcatByOperator(List<JassExpr> list, String op) {
        list.get(0).accept(this);
        stringBuffer.append(" ").append(op).append(" ");
        list.get(1).accept(this);
    }

    // primary
    @Override
    public void visitPrimExpr(@NotNull JassPrimExpr o) {
        if (text(o.getTrue())) return;
        if (text(o.getFalse())) return;
        final var tnull = o.getNull();
        if (tnull != null) {
            appendNull();
            return;
        }
        final var id = o.getId();
        if (id != null) {
            appendSafeName(id.getText());
            return;
        }
        if (text(o.getIntval())) return;
        final var str = o.getStrval();
        if (str != null) {
            appendString(str.getText());
            return;
        }
        final var raw = o.getRawval();
        if (raw != null) {
            stringBuffer.append("FourCC(\"").append(raw.getText().replace("'", "")).append("\")");
            return;
        }
        final var hex = o.getHexval();
        if (hex != null) {
            stringBuffer.append(hex.getText().replace("$", "0x"));
            return;
        }
        final var real = o.getRealval();
        if (real != null) {
            appendReal(real.getText());
            return;
        }
        o.acceptChildren(this);
    }

    @Override
    public void visitMulUnExpr(@NotNull JassMulUnExpr o) {
        appendExprWithPrefixOp(o.getExpr(), "*");
    }

    @Override
    public void visitDivUnExpr(@NotNull JassDivUnExpr o) {
        appendExprWithPrefixOp(o.getExpr(), "/");
    }

    @Override
    public void visitPlusUnExpr(@NotNull JassPlusUnExpr o) {
        appendExprWithPrefixOp(o.getExpr(), "+");
    }

    @Override
    public void visitMinusUnExpr(@NotNull JassMinusUnExpr o) {
        appendExprWithPrefixOp(o.getExpr(), "-");
    }

    @Override
    public void visitNotExpr(@NotNull JassNotExpr o) {
        appendExprWithPrefixOp(o.getExpr(), "!");
    }

    @Override
    public void visitEqExpr(@NotNull JassEqExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "==");
    }

    @Override
    public void visitNeqExpr(@NotNull JassNeqExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "!=");
    }

    @Override
    public void visitLtExpr(@NotNull JassLtExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "<");
    }

    @Override
    public void visitLtEqExpr(@NotNull JassLtEqExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "<=");
    }

    @Override
    public void visitGtExpr(@NotNull JassGtExpr o) {
        appendExprListConcatByOperator(o.getExprList(), ">");
    }

    @Override
    public void visitGtEqExpr(@NotNull JassGtEqExpr o) {
        appendExprListConcatByOperator(o.getExprList(), ">=");
    }

    @Override
    public void visitParenExpr(@NotNull JassParenExpr o) {
        stringBuffer.append("(");
        acceptExpr(o.getExpr());
        stringBuffer.append(")");
    }

    @Override
    public void visitAndExpr(@NotNull JassAndExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "&&");
    }

    @Override
    public void visitOrExpr(@NotNull JassOrExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "||");
    }

    @Override
    public void visitPlusExpr(@NotNull JassPlusExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "+");
    }

    @Override
    public void visitMinusExpr(@NotNull JassMinusExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "-");
    }

    @Override
    public void visitMulExpr(@NotNull JassMulExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "*");
    }

    @Override
    public void visitDivExpr(@NotNull JassDivExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "/");
    }


}
