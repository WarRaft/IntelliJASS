package guru.xgm.jass.openapi.actionSystem.convert.jass2lua;

import guru.xgm.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

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
    public void appendNull() {
        stringBuffer.append("nil");
    }

    // -- variable
    @Override
    public void appendVar(boolean constant, boolean global, boolean array, @NotNull String type, String name, @Nullable JassExpr expr) {
        stringBuffer.append("---@type ").append(type);
        if (constant) stringBuffer.append(" constant");
        stringBuffer.append("\n");

        if (!global) stringBuffer.append("local ");
        stringBuffer.append(name);

        if (expr != null) {
            stringBuffer.append(" = ");
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
        stringBuffer.append("\nelseif ");
        acceptExpr(o.getExpr());
        stringBuffer.append("\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        stringBuffer.append("\n");
    }

    @Override
    public void visitElseStmt(@NotNull JassElseStmt o) {
        stringBuffer.append("\nelse\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        stringBuffer.append("\n");
    }

    // --- expression

    @Override
    public void visitAndExpr(@NotNull JassAndExpr o) {
        exprListConcatByOperator(o.getExprList(), "and");
    }

    @Override
    public void visitOrExpr(@NotNull JassOrExpr o) {
        exprListConcatByOperator(o.getExprList(), "or");
    }
}
