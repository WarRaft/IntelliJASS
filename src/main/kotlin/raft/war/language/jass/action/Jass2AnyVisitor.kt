package raft.war.language.jass.action

import com.intellij.psi.PsiElement
import raft.war.language.jass.codeInspection.number.JassRawcode
import raft.war.language.jass.psi.*

abstract class Jass2AnyVisitor : JassVisitor() {
    private fun getSafeName(name: String): String {
        if (keywords.contains(name)) return name + KEYWORD_SUFFIX
        return name
    }

    fun appendSafeName(name: String) {
        stringBuffer.append(name)
        if (keywords.contains(name)) stringBuffer.append(KEYWORD_SUFFIX)
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

    private fun appendString(str: String) {
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

    override fun visitTypeDef(o: JassTypeDef) {
        val name = o.typeName
        val base = o.typeNameBase
        if (name == null || base == null) return
        appendTypeDef(name.text, base.text)
    }

    // --- globals
    override fun visitGlob(o: JassGlob) {
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
        expr: JassExpr?
    )

    private fun appendVarPrepare(constant: Boolean, global: Boolean, `var`: JassVar) {
        appendVar(
            constant,
            global,
            `var`.array != null,
            getConvertedTypeName(`var`.typeName.text),
            getSafeName(`var`.id.text),
            `var`.expr
        )
    }

    override fun visitGvar(o: JassGvar) {
        appendVarPrepare(o.constant != null, true, o.getVar())
    }

    override fun visitLvarStmt(o: JassLvarStmt) {
        appendVarPrepare(constant = false, global = false, `var` = o.getVar())
    }

    // --- function
    abstract fun appendFunction(returns: String?, name: String?, params: List<JassParam?>, statements: List<JassStmt?>)

    override fun visitFun(o: JassFun) {
        val ret = o.funRet
        val rettype = ret?.typeName

        val name = o.funName

        val take = o.funTake
        var params: List<JassParam?> = ArrayList()
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
    override fun visitStmt(o: JassStmt) {
        o.acceptChildren(this)
    }

    // return
    override fun visitReturnStmt(o: JassReturnStmt) {
        stringBuffer.append("return ")
        acceptExpr(o.expr)
        appendStatementLineEnd()
    }

    // set
    override fun visitSetStmt(o: JassSetStmt) {
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
    override fun visitCallStmt(o: JassCallStmt) {
        if (o.debug != null) appendBlockLineComment("debug")
        o.funCall.accept(this)
        appendStatementLineEnd()
    }

    override fun visitFunCall(o: JassFunCall) {
        val name = o.funName.text
        val list = o.argList
        if (name == "ExecuteFunc" && list != null) {
            val exprs = list.exprList
            if (exprs.size == 1) {
                val expr = exprs[0].firstChild
                if (expr.node.elementType === JassTypes.STRVAL) {
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

    override fun visitArgList(o: JassArgList) {
        val list = o.exprList
        for (i in list.indices) {
            list[i].accept(this)
            if (i < list.size - 1) stringBuffer.append(", ")
        }
    }

    override fun visitFuncAsCode(o: JassFuncAsCode) {
        appendFunctionAsCode(getSafeName(o.id.text))
    }

    // ===============
    private fun text(pe: PsiElement?): Boolean {
        if (pe == null) return false
        stringBuffer.append(pe.text)
        return true
    }

    override fun visitArrayAccess(o: JassArrayAccess) {
        stringBuffer.append(o.id.text).append("[")
        val expr = o.expr
        expr?.accept(this)
        stringBuffer.append("]")
    }

    // --- expression
    fun acceptExpr(expr: JassExpr?) {
        if (expr == null) return
        expr.accept(this)
    }

    fun appendExprWithPrefixOp(expr: JassExpr?, op: String?) {
        if (expr == null) return
        stringBuffer.append(" ").append(op).append(" ")
        expr.accept(this)
    }

    fun appendExprListConcatByOperator(list: List<JassExpr>, op: String?) {
        list[0].accept(this)
        stringBuffer.append(" ").append(op).append(" ")
        list[1].accept(this)
    }

    open fun appendRawcode(raw: JassRawcode) {
        stringBuffer.append("FourCC(\"").append(raw.strval).append("\")")
    }

    // primary
    override fun visitPrimExpr(o: JassPrimExpr) {
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

    override fun visitMulUnExpr(o: JassMulUnExpr) {
        appendExprWithPrefixOp(o.expr, "*")
    }

    override fun visitDivUnExpr(o: JassDivUnExpr) {
        appendExprWithPrefixOp(o.expr, "/")
    }

    override fun visitPlusUnExpr(o: JassPlusUnExpr) {
        appendExprWithPrefixOp(o.expr, "+")
    }

    override fun visitMinusUnExpr(o: JassMinusUnExpr) {
        appendExprWithPrefixOp(o.expr, "-")
    }

    override fun visitNotExpr(o: JassNotExpr) {
        appendExprWithPrefixOp(o.expr, "!")
    }

    override fun visitEqExpr(o: JassEqExpr) {
        appendExprListConcatByOperator(o.exprList, "==")
    }

    override fun visitNeqExpr(o: JassNeqExpr) {
        appendExprListConcatByOperator(o.exprList, "!=")
    }

    override fun visitLtExpr(o: JassLtExpr) {
        appendExprListConcatByOperator(o.exprList, "<")
    }

    override fun visitLtEqExpr(o: JassLtEqExpr) {
        appendExprListConcatByOperator(o.exprList, "<=")
    }

    override fun visitGtExpr(o: JassGtExpr) {
        appendExprListConcatByOperator(o.exprList, ">")
    }

    override fun visitGtEqExpr(o: JassGtEqExpr) {
        appendExprListConcatByOperator(o.exprList, ">=")
    }

    override fun visitParenExpr(o: JassParenExpr) {
        stringBuffer.append("(")
        acceptExpr(o.expr)
        stringBuffer.append(")")
    }

    override fun visitAndExpr(o: JassAndExpr) {
        appendExprListConcatByOperator(o.exprList, "&&")
    }

    override fun visitOrExpr(o: JassOrExpr) {
        appendExprListConcatByOperator(o.exprList, "||")
    }

    override fun visitPlusExpr(o: JassPlusExpr) {
        appendExprListConcatByOperator(o.exprList, "+")
    }

    override fun visitMinusExpr(o: JassMinusExpr) {
        appendExprListConcatByOperator(o.exprList, "-")
    }

    override fun visitMulExpr(o: JassMulExpr) {
        appendExprListConcatByOperator(o.exprList, "*")
    }

    override fun visitDivExpr(o: JassDivExpr) {
        appendExprListConcatByOperator(o.exprList, "/")
    }

    companion object {
        private const val KEYWORD_SUFFIX = "_FUCKING_KEYWORD"
    }
}
