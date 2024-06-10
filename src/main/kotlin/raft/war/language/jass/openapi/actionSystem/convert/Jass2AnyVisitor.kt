package raft.war.language.jass.openapi.actionSystem.convert

import com.intellij.psi.PsiElement
import raft.war.language.jass.codeInspection.number.JassRawcode
import raft.war.language.jass.psi.*

abstract class Jass2AnyVisitor : raft.war.language.jass.psi.JassVisitor() {
    fun getSafeName(name: String): String {
        if (keywords.contains(name)) return name + keywordSuffix
        return name
    }

    fun appendSafeName(name: String) {
        stringBuffer.append(name)
        if (keywords.contains(name)) stringBuffer.append(keywordSuffix)
    }

    @JvmField
    var keywords: HashSet<String> = HashSet()

    @JvmField
    var stringBuffer: StringBuffer = StringBuffer()

    open fun appendSingleLineComment(comment: String?) {
        stringBuffer.append("//").append(comment).append("\n")
    }

    open fun appendBlockLineComment(comment: String?) {
        stringBuffer.append("/*").append(comment).append("*/")
    }

    open fun appendStatementLineEnd() {
        stringBuffer.append(";\n")
    }

    fun appendString(str: String) {
        stringBuffer.append(str)
    }

    open fun appendReal(real: String) {
        stringBuffer.append(real)
    }

    open fun appendNull() {
        stringBuffer.append("null")
    }

    open fun appendFunctionAsCode(name: String) {
        stringBuffer.append(name)
    }

    open fun getConvertedTypeName(type: String): String {
        return type
    }

    // --- typedef
    open fun appendTypeDef(name: String, base: String) {
        appendSingleLineComment("$name extends $base")
    }

    override fun visitTypeDef(o: raft.war.language.jass.psi.JassTypeDef) {
        val name = o.typeName
        val base = o.typeNameBase
        if (name == null || base == null) return
        appendTypeDef(name.text, base.text)
    }

    // --- globals
    override fun visitGlob(o: raft.war.language.jass.psi.JassGlob) {
        appendSingleLineComment("globals")
        o.acceptChildren(this)
        appendSingleLineComment("endglobals")
    }

    // --- variable
    abstract fun appendVar(
        constant: Boolean,
        global: Boolean,
        array: Boolean,
        type: String,
        name: String?,
        expr: raft.war.language.jass.psi.JassExpr?
    )

    private fun appendVarPrepare(constant: Boolean, global: Boolean, `var`: raft.war.language.jass.psi.JassVar) {
        appendVar(
            constant,
            global,
            `var`.array != null,
            getConvertedTypeName(`var`.typeName.text),
            getSafeName(`var`.id.text),
            `var`.expr
        )
    }

    override fun visitGvar(o: raft.war.language.jass.psi.JassGvar) {
        appendVarPrepare(o.constant != null, true, o.getVar())
    }

    override fun visitLvarStmt(o: raft.war.language.jass.psi.JassLvarStmt) {
        appendVarPrepare(false, false, o.getVar())
    }

    // --- function
    abstract fun appendFunction(returns: String?, name: String?, params: List<raft.war.language.jass.psi.JassParam?>, statements: List<raft.war.language.jass.psi.JassStmt?>)

    override fun visitFun(o: raft.war.language.jass.psi.JassFun) {
        val ret = o.funRet
        val rettype = ret?.typeName

        val name = o.id

        val take = o.funTake
        var params: List<raft.war.language.jass.psi.JassParam?> = ArrayList()
        if (take != null) {
            val list = take.paramList
            if (list != null) params = list.paramList
        }

        appendFunction(
            if (ret == null || rettype == null || ret.nothing != null) null else getConvertedTypeName(rettype.text),
            if (name == null) "" else getSafeName(name.text),
            params,
            o.stmtList
        )
    }

    // --- statement
    // stmt list
    override fun visitStmt(o: raft.war.language.jass.psi.JassStmt) {
        o.acceptChildren(this)
    }

    // return
    override fun visitReturnStmt(o: raft.war.language.jass.psi.JassReturnStmt) {
        stringBuffer.append("return ")
        acceptExpr(o.expr)
        appendStatementLineEnd()
    }

    // set
    override fun visitSetStmt(o: raft.war.language.jass.psi.JassSetStmt) {
        val id = o.id
        if (id != null) appendSafeName(id.text)
        val arr = o.arrayAccess
        arr?.accept(this)
        val expr = o.expr
        if (expr != null) {
            stringBuffer.append(" = ")
            expr.accept(this)
        }
        appendStatementLineEnd()
    }

    // call
    override fun visitCallStmt(o: raft.war.language.jass.psi.JassCallStmt) {
        if (o.debug != null) appendBlockLineComment("debug")
        o.funCall.accept(this)
        appendStatementLineEnd()
    }

    override fun visitFunCall(o: raft.war.language.jass.psi.JassFunCall) {
        val name = o.id.text
        val list = o.argList
        if (name == "ExecuteFunc" && list != null) {
            val exprs = list.exprList
            if (exprs.size == 1) {
                val expr = exprs[0].firstChild
                if (expr.node.elementType === raft.war.language.jass.psi.JassTypes.STRVAL) {
                    val fn = expr.text.replaceFirst("^\"".toRegex(), "").replaceFirst("\"$".toRegex(), "")
                    if (fn.matches("^[a-zA-Z_][a-zA-Z_0-9]*$".toRegex())) {
                        stringBuffer.append(fn).append("()")
                        return
                    }
                }
            }
        }

        appendSafeName(name)
        stringBuffer.append("(")
        list?.accept(this)
        stringBuffer.append(")")
    }

    override fun visitArgList(o: raft.war.language.jass.psi.JassArgList) {
        val list = o.exprList
        for (i in list.indices) {
            list[i].accept(this)
            if (i < list.size - 1) stringBuffer.append(", ")
        }
    }

    override fun visitFuncAsCode(o: raft.war.language.jass.psi.JassFuncAsCode) {
        appendFunctionAsCode(getSafeName(o.id.text))
    }

    // ===============
    private fun text(pe: PsiElement?): Boolean {
        if (pe == null) return false
        stringBuffer.append(pe.text)
        return true
    }

    override fun visitArrayAccess(o: raft.war.language.jass.psi.JassArrayAccess) {
        stringBuffer.append(o.id.text).append("[")
        val expr = o.expr
        expr?.accept(this)
        stringBuffer.append("]")
    }

    // --- expression
    fun acceptExpr(expr: raft.war.language.jass.psi.JassExpr?) {
        if (expr == null) return
        expr.accept(this)
    }

    fun appendExprWithPrefixOp(expr: raft.war.language.jass.psi.JassExpr?, op: String?) {
        if (expr == null) return
        stringBuffer.append(" ").append(op).append(" ")
        expr.accept(this)
    }

    fun appendExprListConcatByOperator(list: List<raft.war.language.jass.psi.JassExpr>, op: String?) {
        list[0].accept(this)
        stringBuffer.append(" ").append(op).append(" ")
        list[1].accept(this)
    }

    open fun appendRawcode(raw: JassRawcode) {
        stringBuffer.append("FourCC(\"").append(raw.strval).append("\")")
    }

    // primary
    override fun visitPrimExpr(o: raft.war.language.jass.psi.JassPrimExpr) {
        if (text(o.getTrue())) return
        if (text(o.getFalse())) return
        val tnull = o.getNull()
        if (tnull != null) {
            appendNull()
            return
        }
        val id = o.id
        if (id != null) {
            appendSafeName(id.text)
            return
        }
        if (text(o.intval)) return
        val str = o.strval
        if (str != null) {
            appendString(str.text)
            return
        }
        val raw = o.rawval
        if (raw != null) {
            appendRawcode(JassRawcode(raw))
            return
        }
        val hex = o.hexval
        if (hex != null) {
            stringBuffer.append(hex.text.replace("$", "0x"))
            return
        }
        val real = o.realval
        if (real != null) {
            appendReal(real.text)
            return
        }
        o.acceptChildren(this)
    }

    override fun visitMulUnExpr(o: raft.war.language.jass.psi.JassMulUnExpr) {
        appendExprWithPrefixOp(o.expr, "*")
    }

    override fun visitDivUnExpr(o: raft.war.language.jass.psi.JassDivUnExpr) {
        appendExprWithPrefixOp(o.expr, "/")
    }

    override fun visitPlusUnExpr(o: raft.war.language.jass.psi.JassPlusUnExpr) {
        appendExprWithPrefixOp(o.expr, "+")
    }

    override fun visitMinusUnExpr(o: raft.war.language.jass.psi.JassMinusUnExpr) {
        appendExprWithPrefixOp(o.expr, "-")
    }

    override fun visitNotExpr(o: raft.war.language.jass.psi.JassNotExpr) {
        appendExprWithPrefixOp(o.expr, "!")
    }

    override fun visitEqExpr(o: raft.war.language.jass.psi.JassEqExpr) {
        appendExprListConcatByOperator(o.exprList, "==")
    }

    override fun visitNeqExpr(o: raft.war.language.jass.psi.JassNeqExpr) {
        appendExprListConcatByOperator(o.exprList, "!=")
    }

    override fun visitLtExpr(o: raft.war.language.jass.psi.JassLtExpr) {
        appendExprListConcatByOperator(o.exprList, "<")
    }

    override fun visitLtEqExpr(o: raft.war.language.jass.psi.JassLtEqExpr) {
        appendExprListConcatByOperator(o.exprList, "<=")
    }

    override fun visitGtExpr(o: raft.war.language.jass.psi.JassGtExpr) {
        appendExprListConcatByOperator(o.exprList, ">")
    }

    override fun visitGtEqExpr(o: raft.war.language.jass.psi.JassGtEqExpr) {
        appendExprListConcatByOperator(o.exprList, ">=")
    }

    override fun visitParenExpr(o: raft.war.language.jass.psi.JassParenExpr) {
        stringBuffer.append("(")
        acceptExpr(o.expr)
        stringBuffer.append(")")
    }

    override fun visitAndExpr(o: raft.war.language.jass.psi.JassAndExpr) {
        appendExprListConcatByOperator(o.exprList, "&&")
    }

    override fun visitOrExpr(o: raft.war.language.jass.psi.JassOrExpr) {
        appendExprListConcatByOperator(o.exprList, "||")
    }

    override fun visitPlusExpr(o: raft.war.language.jass.psi.JassPlusExpr) {
        appendExprListConcatByOperator(o.exprList, "+")
    }

    override fun visitMinusExpr(o: raft.war.language.jass.psi.JassMinusExpr) {
        appendExprListConcatByOperator(o.exprList, "-")
    }

    override fun visitMulExpr(o: raft.war.language.jass.psi.JassMulExpr) {
        appendExprListConcatByOperator(o.exprList, "*")
    }

    override fun visitDivExpr(o: raft.war.language.jass.psi.JassDivExpr) {
        appendExprListConcatByOperator(o.exprList, "/")
    }


    companion object {
        private const val keywordSuffix = "_FUCKING_KEYWORD"
    }
}
