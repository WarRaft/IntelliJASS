package guru.xgm.jass.openapi.actionSystem.convert.jass2lua;

import guru.xgm.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

import static guru.xgm.jass.psi.JassTypes.*;

public class Jass2LuaVisitor extends Jass2AnyVisitor {
    @Override
    public void appendStatementLineEnd() {
        stringBuffer.append("\n");
    }

    @Override
    public void appendSingleLineComment(String comment) {
        stringBuffer.append("--").append(comment).append("\n");
    }

    @Override
    public void appendBlockLineComment(String comment) {
        stringBuffer.append("--[[").append(comment).append("--]]");
    }

    @Override
    public void appendNull() {
        stringBuffer.append("nil");
    }

    // -- variable
    @Override
    public void appendVar(boolean constant, boolean global, boolean array, @NotNull String type, String name, @Nullable JassExpr expr) {
        stringBuffer.append("---@type ").append(type);
        if (global) stringBuffer.append(" @global");
        if (constant) stringBuffer.append(" constant");
        stringBuffer.append("\n");

        if (!global) stringBuffer.append("local ");
        stringBuffer.append(name);

        stringBuffer.append(" = ");
        if (expr == null) {
            if (array) stringBuffer.append("{}");
            else stringBuffer.append("nil");
        } else {
            expr.accept(this);
        }
        appendStatementLineEnd();
    }

    // --- function
    @Override
    public void appendFunction(@Nullable String returns, String name, @NotNull List<JassParam> params, @NotNull List<JassStmt> statements) {
        for (JassParam param : params) {
            stringBuffer.append("---@param ").append(param.getId().getText()).append(" ").append(getConvertedTypeName(param.getTypeName().getText())).append("\n");
        }
        if (returns != null) stringBuffer.append("---@return ").append(returns).append("\n");

        stringBuffer.append("function ").append(name).append("(");
        for (int i = 0; i < params.size(); i++) {
            stringBuffer.append(params.get(i).getId().getText());
            if (i < params.size() - 1) stringBuffer.append(", ");
        }
        stringBuffer.append(")\n");
        for (JassStmt stmt : statements) stmt.accept(this);
        stringBuffer.append("end\n");
    }

    // --- statement

    // if
    @Override
    public void visitIfStmt(@NotNull JassIfStmt o) {
        stringBuffer.append("if ");
        acceptExpr(o.getExpr());
        stringBuffer.append(" then\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        for (JassElseIfStmt stmt : o.getElseIfStmtList()) stmt.accept(this);
        for (JassElseStmt stmt : o.getElseStmtList()) stmt.accept(this);
        stringBuffer.append("end\n");
    }

    @Override
    public void visitElseIfStmt(@NotNull JassElseIfStmt o) {
        stringBuffer.append("elseif ");
        acceptExpr(o.getExpr());
        stringBuffer.append(" then\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
    }

    @Override
    public void visitElseStmt(@NotNull JassElseStmt o) {
        stringBuffer.append("else\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
    }

    // loop
    @Override
    public void visitLoopStmt(@NotNull JassLoopStmt o) {
        stringBuffer.append("while (true) do\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        stringBuffer.append("end\n");
    }

    @Override
    public void visitExitWhenStmt(@NotNull JassExitWhenStmt o) {
        final var expr = o.getExpr();
        if (expr == null) return;
        stringBuffer.append("if ");
        expr.accept(this);
        stringBuffer.append(" then break end\n");
    }

    // --- expression

    @Override
    public void visitNeqExpr(@NotNull JassNeqExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "~=");
    }

    @Override
    public void visitAndExpr(@NotNull JassAndExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "and");
    }

    @Override
    public void visitOrExpr(@NotNull JassOrExpr o) {
        appendExprListConcatByOperator(o.getExprList(), "or");
    }

    @Override
    public void visitNotExpr(@NotNull JassNotExpr o) {
        appendExprWithPrefixOp(o.getExpr(), "not");
    }

    @Override
    public void visitPlusExpr(@NotNull JassPlusExpr o) {
        final var list = o.getExprList();
        for (JassExpr expr : list) {
            final var c = expr.getFirstChild();
            if (c.getNode().getElementType() == STRVAL) {
                appendExprListConcatByOperator(list, "..");
                return;
            }
        }
        appendExprListConcatByOperator(list, "+");
    }
}
