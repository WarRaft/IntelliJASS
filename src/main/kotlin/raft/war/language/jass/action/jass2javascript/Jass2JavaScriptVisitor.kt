package raft.war.language.jass.action.jass2javascript

import raft.war.language.jass.action.Jass2AnyVisitor
import raft.war.language.jass.psi.*

class Jass2JavaScriptVisitor(private var typescript: Boolean) : Jass2AnyVisitor() {
    init {
        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar
        keywords = object : HashSet<String>() {
            init {
                add("break")
                add("case")
                add("catch")
                add("class")
                add("const")
                add("continue")
                add("debugger")
                add("default")
                add("delete")
                add("do")
                add("else")
                add("export")
                add("extends")
                add("false")
                add("finally")
                add("for")
                add("function")
                add("if")
                add("import")
                add("in")
                add("instanceof")
                add("new")
                add("null")
                add("return")
                add("super")
                add("switch")
                add("this")
                add("throw")
                add("true")
                add("try")
                add("typeof")
                add("var")
                add("void")
                add("while")
                add("with")
                // The following are only reserved when they are found in strict mode code:
                add("let")
                add("static")
                add("yield")
                // The following are only reserved when they are found in module code or async function bodies:
                add("await")
                // These are always reserved:
                add("enum")
                // Future reserved words in older standards
                add("abstract")
                add("boolean")
                add("byte")
                add("char")
                add("double")
                add("final")
                add("float")
                add("goto")
                add("int")
                add("long")
                add("native")
                add("short")
                add("synchronized")
                add("throws")
                add("transient")
                add("volatile")
                // Identifiers with special meanings
                add("arguments")
                add("as")
                add("async")
                add("eval")
                add("from")
                add("get")
                add("of")
                add("set")
            }
        }
    }

    override fun appendStatementLineEnd() {
        stringBuffer.append("\n")
    }

    // -- typedef
    override fun appendTypeDef(name: String, base: String) {
        if (typescript) {
            stringBuffer.append("declare interface ").append(name).append(" extends ").append(base).append(" {}")
        } else {
            stringBuffer.append("/** @typedef {").append(base).append("} ").append(name).append(" */")
        }
        stringBuffer.append("\n")
    }

    // -- variable
    override fun appendVar(
        constant: Boolean,
        global: Boolean,
        array: Boolean,
        type: String,
        name: String?,
        expr: JassExpr?
    ) {
        if (!typescript) {
            stringBuffer.append("/** @type {").append(type)
            if (array) stringBuffer.append("[]")
            stringBuffer.append("}")
            if (global) stringBuffer.append("\n *  @global\n")
            stringBuffer.append(" */\n")
        }
        stringBuffer.append(if (constant) "const" else "let").append(" ").append(name)

        if (typescript) {
            stringBuffer.append(":").append(type)
            if (array) stringBuffer.append("[]")
        }

        stringBuffer.append(" = ")
        expr?.accept(this) ?: if (array) stringBuffer.append("[]")
        else stringBuffer.append("null")

        appendStatementLineEnd()
    }

    // --- function
    override fun appendFunction(
        returns: String?,
        name: String?,
        params: List<JassParam?>,
        statements: List<JassStmt?>
    ) {
        if (!typescript) {
            stringBuffer.append("/**\n")
            for (param in params) {
                stringBuffer.append(" *  @param {").append(getConvertedTypeName(param!!.typeName.text)).append("} ")
                appendSafeName(param.id.text)
                stringBuffer.append("\n")
            }
            if (returns != null) stringBuffer.append(" *  @returns {").append(returns).append("}\n")
            stringBuffer.append(" */\n")
        }

        stringBuffer.append("function ").append(name).append("(")
        for (i in params.indices) {
            val param = params[i]

            appendSafeName(param!!.id.text)
            if (typescript) {
                val type = param.typeName
                stringBuffer.append(":").append(getConvertedTypeName(type.text))
            }
            if (i < params.size - 1) stringBuffer.append(", ")
        }
        stringBuffer.append("){\n")
        for (stmt in statements) stmt!!.accept(this)
        stringBuffer.append("}\n")
    }

    // --- statement
    // if
    override fun visitIfStmt(o: JassIfStmt) {
        stringBuffer.append("if (")
        acceptExpr(o.expr)
        stringBuffer.append("){\n")
        for (stmt in o.funBody!!.stmtList) stmt.accept(this)
        stringBuffer.append("}\n")
        for (stmt in o.elseIfStmtList) stmt.accept(this)
        for (stmt in o.elseStmtList) stmt.accept(this)
    }

    override fun visitElseIfStmt(o: JassElseIfStmt) {
        stringBuffer.append("else if (")
        acceptExpr(o.expr)
        stringBuffer.append("){\n")
        for (stmt in o.funBody!!.stmtList) stmt.accept(this)
        stringBuffer.append("}\n")
    }

    override fun visitElseStmt(o: JassElseStmt) {
        stringBuffer.append("else {\n")
        for (stmt in o.funBody!!.stmtList) stmt.accept(this)
        stringBuffer.append("}\n")
    }

    // loop
    override fun visitLoopStmt(o: JassLoopStmt) {
        stringBuffer.append("while (true) {\n")
        for (stmt in o.funBody!!.stmtList) stmt.accept(this)
        stringBuffer.append("}\n")
    }

    override fun visitExitWhenStmt(o: JassExitWhenStmt) {
        val expr = o.expr ?: return
        stringBuffer.append("if (")
        expr.accept(this)
        stringBuffer.append(") break;\n")
    }
}
