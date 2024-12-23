package raft.war.language.jass.action.jass2angelscript

import raft.war.language.jass.inspection.number.JassRawcode
import raft.war.language.jass.action.Jass2AnyVisitor
import raft.war.language.jass.psi.*
import raft.war.language.jass.psi.typeName.JassTypeNameBaseImpl.Companion.TYPE_CODE

/*
ExecuteFunc
array to Dictionary<int,type>
*/
class Jass2AngelScriptVisitor internal constructor() : Jass2AnyVisitor() {
    init {
        // https://www.angelcode.com/angelscript/sdk/docs/manual/doc_reserved_keywords.html
        keywords = object : HashSet<String>() {
            init {
                add("abstract")
                add("auto")
                add("bool")
                add("break")
                add("case")
                add("catch")
                add("class")
                add("const")
                add("continue")
                add("default")
                add("do")
                add("double")
                add("enum")
                add("explicit")
                add("external")
                add("final")
                add("float")
                add("for")
                add("from")
                add("funcdef")
                add("get")
                add("import")
                add("in")
                add("inout")
                add("int")
                add("interface")
                add("int8")
                add("int16")
                add("int32")
                add("int64")
                add("is")
                add("mixin")
                add("namespace")
                add("out")
                add("override")
                add("private")
                add("property")
                add("protected")
                add("shared")
                add("super")
                add("switch")
                add("this")
                add("try")
                add("typedef")
                add("uint")
                add("uint8")
                add("uint16")
                add("uint32")
                add("uint64")
                add("void")
                add("while")
                add("xor")
            }
        }
    }

    override fun getConvertedTypeName(type: String): String {
        return when (type) {
            "integer" -> "int"
            "real" -> "float"
            "boolean" -> "bool"
            else -> type
        }
    }

    override fun appendReal(real: String) {
        stringBuffer.append(real).append("f")
    }

    // --- typedef https://www.angelcode.com/angelscript/sdk/docs/manual/doc_global_typedef.html
    override fun appendTypeDef(name: String, base: String) {
        stringBuffer.append("//typedef ").append(base).append(" ").append(name)
        appendStatementLineEnd()
    }

    // --- variable
    private fun appendVarExpr(expr: JassExpr?) {
        if (expr == null) return
        if (expr.text == "null") return
        stringBuffer.append(" = ")
        expr.accept(this)
    }

    override fun appendVar(
        constant: Boolean,
        global: Boolean,
        array: Boolean,
        type: String,
        name: String?,
        expr: JassExpr?
    ) {
        if (constant) stringBuffer.append("const ")
        if (array) {
            stringBuffer.append("array<").append(type).append("> ").append(name)
        } else {
            stringBuffer.append(type).append(" ").append(name)
            appendVarExpr(expr)
        }
        appendStatementLineEnd()
    }

    // --- function
    override fun appendFunction(
        returns: String?,
        name: String?,
        params: List<JassParam?>,
        statements: List<JassStmt?>
    ) {
        if (returns == null) {
            stringBuffer.append("void")
        } else {
            if (returns == TYPE_CODE) {
                stringBuffer.append("BoolexprFunc@")
            } else {
                stringBuffer.append(returns)
            }
        }
        stringBuffer.append(' ').append(name).append("(")
        /*
        for (i in params.indices) {
            val param = params[i]
            val type = param!!.typeName
            if (type.text == TYPE_CODE) {
                stringBuffer.append("BoolexprFunc@")
            } else {
                stringBuffer.append(getConvertedTypeName(type.text))
            }
            stringBuffer.append(" ")
            appendSafeName(param.varName.text)
            if (i < params.size - 1) stringBuffer.append(", ")
        }
         */
        stringBuffer.append("){\n")
        for (stmt in statements) stmt!!.accept(this)
        stringBuffer.append("}\n")
    }

    // --- statement
    // func as code
    override fun appendFunctionAsCode(name: String) {
        stringBuffer.append("@").append(name)
    }

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

    // set
    override fun visitSetStmt(o: JassSetStmt) {
        val vn = o.varName
        if (vn != null) appendSafeName(vn.text)
        val arr = o.arrayAccess
        arr?.accept(this)
        val expr = o.expr
        if (expr != null) {
            stringBuffer.append(" = ")
            val s = expr.text
            if (s == "null") {
                stringBuffer.append("nil")
            } else {
                expr.accept(this)
            }
        }
        appendStatementLineEnd()
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


    // --- expressions
    override fun appendRawcode(raw: JassRawcode) {
        if (raw.safe) stringBuffer.append("'").append(raw.strval).append("'")
        else stringBuffer.append(raw.hex)
    }
}
