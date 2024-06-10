package raft.war.language.jass.openapi.actionSystem.convert.jass2lua

import raft.war.language.jass.openapi.actionSystem.convert.Jass2AnyVisitor
import raft.war.language.jass.psi.*

class Jass2LuaVisitor internal constructor() : Jass2AnyVisitor() {
    init {
        //https://www.lua.org/manual/5.1/manual.html
        keywords = object : HashSet<String>() {
            init {
                add("break")
                add("do")
                add("end")
                add("for")
                add("in")
                add("nil")
                add("repeat")
                add("until")
                add("while")
            }
        }
    }

    override fun appendStatementLineEnd() {
        stringBuffer.append("\n")
    }

    override fun appendSingleLineComment(comment: String?) {
        stringBuffer.append("--").append(comment).append("\n")
    }

    override fun appendBlockLineComment(comment: String?) {
        stringBuffer.append("--[[").append(comment).append("--]]")
    }

    override fun appendNull() {
        stringBuffer.append("nil")
    }

    // -- typedef
    override fun appendTypeDef(name: String, base: String) {
        stringBuffer.append("---@class ").append(name).append(":").append(base)
        appendStatementLineEnd()
    }

    // -- variable
    override fun appendVar(
        constant: Boolean,
        global: Boolean,
        array: Boolean,
        type: String,
        name: String?,
        expr: raft.war.language.jass.psi.JassExpr?
    ) {
        stringBuffer.append("---@type ").append(type)
        if (global) stringBuffer.append(" @global")
        if (constant) stringBuffer.append(" constant")
        stringBuffer.append("\n")

        if (!global) stringBuffer.append("local ")
        stringBuffer.append(name)

        stringBuffer.append(" = ")
        expr?.accept(this) ?: if (array) stringBuffer.append("{}")
        else stringBuffer.append("nil")
        appendStatementLineEnd()
    }

    // --- function
    override fun appendFunction(
        returns: String?,
        name: String?,
        params: List<raft.war.language.jass.psi.JassParam?>,
        statements: List<raft.war.language.jass.psi.JassStmt?>
    ) {
        for (param in params) {
            stringBuffer.append("---@param ")
            appendSafeName(param!!.id.text)
            stringBuffer.append(" ").append(getConvertedTypeName(param.typeName.text)).append("\n")
        }
        if (returns != null) stringBuffer.append("---@return ").append(returns).append("\n")

        stringBuffer.append("function ").append(name).append("(")
        for (i in params.indices) {
            appendSafeName(params[i]!!.id.text)
            if (i < params.size - 1) stringBuffer.append(", ")
        }
        stringBuffer.append(")\n")
        for (stmt in statements) stmt!!.accept(this)
        stringBuffer.append("end\n")
    }

    // --- statement
    // if
    override fun visitIfStmt(o: raft.war.language.jass.psi.JassIfStmt) {
        stringBuffer.append("if ")
        acceptExpr(o.expr)
        stringBuffer.append(" then\n")
        for (stmt in o.stmtList) stmt.accept(this)
        for (stmt in o.elseIfStmtList) stmt.accept(this)
        for (stmt in o.elseStmtList) stmt.accept(this)
        stringBuffer.append("end\n")
    }

    override fun visitElseIfStmt(o: raft.war.language.jass.psi.JassElseIfStmt) {
        stringBuffer.append("elseif ")
        acceptExpr(o.expr)
        stringBuffer.append(" then\n")
        for (stmt in o.stmtList) stmt.accept(this)
    }

    override fun visitElseStmt(o: raft.war.language.jass.psi.JassElseStmt) {
        stringBuffer.append("else\n")
        for (stmt in o.stmtList) stmt.accept(this)
    }

    // loop
    override fun visitLoopStmt(o: raft.war.language.jass.psi.JassLoopStmt) {
        stringBuffer.append("while (true) do\n")
        for (stmt in o.stmtList) stmt.accept(this)
        stringBuffer.append("end\n")
    }

    override fun visitExitWhenStmt(o: raft.war.language.jass.psi.JassExitWhenStmt) {
        val expr = o.expr ?: return
        stringBuffer.append("if ")
        expr.accept(this)
        stringBuffer.append(" then break end\n")
    }

    // --- expression
    override fun visitNeqExpr(o: raft.war.language.jass.psi.JassNeqExpr) {
        appendExprListConcatByOperator(o.exprList, "~=")
    }

    override fun visitAndExpr(o: raft.war.language.jass.psi.JassAndExpr) {
        appendExprListConcatByOperator(o.exprList, "and")
    }

    override fun visitOrExpr(o: raft.war.language.jass.psi.JassOrExpr) {
        appendExprListConcatByOperator(o.exprList, "or")
    }

    override fun visitNotExpr(o: raft.war.language.jass.psi.JassNotExpr) {
        appendExprWithPrefixOp(o.expr, "not")
    }

    override fun visitPlusExpr(o: raft.war.language.jass.psi.JassPlusExpr) {
        val list = o.exprList
        for (expr in list) {
            val c = expr.firstChild
            if (c.node.elementType === raft.war.language.jass.psi.JassTypes.STRVAL) {
                appendExprListConcatByOperator(list, "..")
                return
            }
        }
        appendExprListConcatByOperator(list, "+")
    }
}
