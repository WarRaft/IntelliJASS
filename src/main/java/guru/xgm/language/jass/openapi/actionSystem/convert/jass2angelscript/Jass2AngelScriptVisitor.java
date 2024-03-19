package guru.xgm.language.jass.openapi.actionSystem.convert.jass2angelscript;

import guru.xgm.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import guru.xgm.language.jass.psi.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.HashSet;
import java.util.List;
import java.util.Objects;

public class Jass2AngelScriptVisitor extends Jass2AnyVisitor {

    Jass2AngelScriptVisitor() {
        // https://www.angelcode.com/angelscript/sdk/docs/manual/doc_reserved_keywords.html
        keywords = new HashSet<>() {{
            add("abstract");
            add("auto");
            add("bool");
            add("break");
            add("case");
            add("catch");
            add("class");
            add("const");
            add("continue");
            add("default");
            add("do");
            add("double");
            add("enum");
            add("explicit");
            add("external");
            add("final");
            add("float");
            add("for");
            add("from");
            add("funcdef");
            add("get");
            add("import");
            add("in");
            add("inout");
            add("int");
            add("interface");
            add("int8");
            add("int16");
            add("int32");
            add("int64");
            add("is");
            add("mixin");
            add("namespace");
            add("out");
            add("override");
            add("private");
            add("property");
            add("protected");
            add("shared");
            add("super");
            add("switch");
            add("this");
            add("try");
            add("typedef");
            add("uint");
            add("uint8");
            add("uint16");
            add("uint32");
            add("uint64");
            add("void");
            add("while");
            add("xor");
        }};
    }

    @Override
    public @NotNull String getConvertedTypeName(@NotNull String type) {
        return switch (type) {
            case "integer" -> "int";
            case "real" -> "float";
            case "boolean" -> "bool";
            default -> type;
        };
    }

    @Override
    public void appendReal(@NotNull String real) {
        stringBuffer.append(real).append("f");
    }

    // --- typedef https://www.angelcode.com/angelscript/sdk/docs/manual/doc_global_typedef.html

    @Override
    public void appendTypeDef(String name, String base) {
        stringBuffer.append("//typedef ").append(base).append(" ").append(name);
        appendStatementLineEnd();
    }

    // --- variable
    private void appendVarExpr(@Nullable JassExpr expr) {
        if (expr == null) return;
        if (Objects.equals(expr.getText(), "null")) return;
        stringBuffer.append(" = ");
        expr.accept(this);
    }

    @Override
    public void appendVar(boolean constant, boolean global, boolean array, @NotNull String type, String name, @Nullable JassExpr expr) {
        if (constant) stringBuffer.append("const ");
        if (array) {
            stringBuffer.append("array<").append(type).append("> ").append(name);
        } else {
            stringBuffer.append(type).append(" ").append(name);
            appendVarExpr(expr);
        }
        appendStatementLineEnd();
    }

    // --- function
    @Override
    public void appendFunction(@Nullable String returns, String name, @NotNull List<JassParam> params, @NotNull List<JassStmt> statements) {
        if (returns == null) {
            stringBuffer.append("void");
        } else {
            if (returns.equals("code")) {
                stringBuffer.append("BoolexprFunc@");
            } else {
                stringBuffer.append(returns);
            }
        }
        stringBuffer.append(' ').append(name).append("(");
        for (int i = 0; i < params.size(); i++) {
            final var param = params.get(i);
            final var type = param.getTypeName();
            if (type.getCode() != null) {
                stringBuffer.append("BoolexprFunc@");
            } else {
                stringBuffer.append(getConvertedTypeName(type.getText()));
            }
            stringBuffer.append(" ");
            appendSafeName(param.getId().getText());
            if (i < params.size() - 1) stringBuffer.append(", ");
        }
        stringBuffer.append("){\n");
        for (JassStmt stmt : statements) stmt.accept(this);
        stringBuffer.append("}\n");
    }

    // --- statement

    // func as code
    @Override
    public void appendFunctionAsCode(@NotNull String name) {
        stringBuffer.append("@").append(name);
    }

    // if
    @Override
    public void visitIfStmt(@NotNull JassIfStmt o) {
        stringBuffer.append("if (");
        acceptExpr(o.getExpr());
        stringBuffer.append("){\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        stringBuffer.append("}\n");
        for (JassElseIfStmt stmt : o.getElseIfStmtList()) stmt.accept(this);
        for (JassElseStmt stmt : o.getElseStmtList()) stmt.accept(this);
    }

    @Override
    public void visitElseIfStmt(@NotNull JassElseIfStmt o) {
        stringBuffer.append("else if (");
        acceptExpr(o.getExpr());
        stringBuffer.append("){\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        stringBuffer.append("}\n");
    }

    @Override
    public void visitElseStmt(@NotNull JassElseStmt o) {
        stringBuffer.append("else {\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        stringBuffer.append("}\n");
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
            final String s = expr.getText();
            if (s.equals("null")) {
                stringBuffer.append("nil");
            } else {
                expr.accept(this);
            }
        }
        appendStatementLineEnd();
    }

    // loop
    @Override
    public void visitLoopStmt(@NotNull JassLoopStmt o) {
        stringBuffer.append("while (true) {\n");
        for (JassStmt stmt : o.getStmtList()) stmt.accept(this);
        stringBuffer.append("}\n");
    }

    @Override
    public void visitExitWhenStmt(@NotNull JassExitWhenStmt o) {
        final var expr = o.getExpr();
        if (expr == null) return;
        stringBuffer.append("if (");
        expr.accept(this);
        stringBuffer.append(") break;\n");
    }

}
