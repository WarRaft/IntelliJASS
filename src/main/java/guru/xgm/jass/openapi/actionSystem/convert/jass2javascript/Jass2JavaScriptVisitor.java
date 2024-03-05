package guru.xgm.jass.openapi.actionSystem.convert.jass2javascript;

import guru.xgm.jass.openapi.actionSystem.convert.Jass2AnyVisitor;
import guru.xgm.jass.psi.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.HashSet;
import java.util.List;

public class Jass2JavaScriptVisitor extends Jass2AnyVisitor {

    public Jass2JavaScriptVisitor(boolean typescript) {
        this.typescript = typescript;

        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar
        keywords = new HashSet<>() {{
            add("break");
            add("case");
            add("catch");
            add("class");
            add("const");
            add("continue");
            add("debugger");
            add("default");
            add("delete");
            add("do");
            add("else");
            add("export");
            add("extends");
            add("false");
            add("finally");
            add("for");
            add("function");
            add("if");
            add("import");
            add("in");
            add("instanceof");
            add("new");
            add("null");
            add("return");
            add("super");
            add("switch");
            add("this");
            add("throw");
            add("true");
            add("try");
            add("typeof");
            add("var");
            add("void");
            add("while");
            add("with");
            // The following are only reserved when they are found in strict mode code:
            add("let");
            add("static");
            add("yield");
            // The following are only reserved when they are found in module code or async function bodies:
            add("await");
            // These are always reserved:
            add("enum");
            // Future reserved words in older standards
            add("abstract");
            add("boolean");
            add("byte");
            add("char");
            add("double");
            add("final");
            add("float");
            add("goto");
            add("int");
            add("long");
            add("native");
            add("short");
            add("synchronized");
            add("throws");
            add("transient");
            add("volatile");
            // Identifiers with special meanings
            add("arguments");
            add("as");
            add("async");
            add("eval");
            add("from");
            add("get");
            add("of");
            add("set");
        }};
    }

    boolean typescript;

    @Override
    public void appendStatementLineEnd() {
        stringBuffer.append("\n");
    }

    // -- typedef
    @Override
    public void appendTypeDef(String name, String base) {
        if (typescript) {
            stringBuffer.append("declare interface ").append(name).append(" extends ").append(base).append(" {}");
        } else {
            stringBuffer.append("/** @typedef {").append(base).append("} ").append(name).append(" */");
        }
        stringBuffer.append("\n");
    }

    // -- variable
    @Override
    public void appendVar(boolean constant, boolean global, boolean array, @NotNull String type, String name, @Nullable JassExpr expr) {
        if (!typescript) {
            stringBuffer.append("/** @type {").append(type).append("}");
            if (global) stringBuffer.append("\n *  @global\n");
            stringBuffer.append(" */\n");
        }
        stringBuffer.append(constant ? "const" : "let").append(" ").append(name);

        if (typescript) stringBuffer.append(":").append(type);

        stringBuffer.append(" = ");
        if (expr == null) {
            if (array) stringBuffer.append("[]");
            else stringBuffer.append("null");
        } else {
            expr.accept(this);
        }

        appendStatementLineEnd();
    }

    // --- function
    @Override
    public void appendFunction(@Nullable String returns, String name, @NotNull List<JassParam> params, @NotNull List<JassStmt> statements) {
        if (!typescript) {
            stringBuffer.append("/**\n");
            for (JassParam param : params) {
                stringBuffer.append(" *  @param {").append(getConvertedTypeName(param.getTypeName().getText())).append("} ");
                appendSafeName(param.getId().getText());
                stringBuffer.append("\n");
            }
            if (returns != null) stringBuffer.append(" *  @returns {").append(returns).append("}\n");
            stringBuffer.append(" */\n");
        }

        stringBuffer.append("function ").append(name).append("(");
        for (int i = 0; i < params.size(); i++) {
            final var param = params.get(i);

            appendSafeName(param.getId().getText());
            if (typescript) {
                final var type = param.getTypeName();
                stringBuffer.append(":").append(getConvertedTypeName(type.getText()));
            }
            if (i < params.size() - 1) stringBuffer.append(", ");
        }
        stringBuffer.append("){\n");
        for (JassStmt stmt : statements) stmt.accept(this);
        stringBuffer.append("}\n");
    }

    // --- statement

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
