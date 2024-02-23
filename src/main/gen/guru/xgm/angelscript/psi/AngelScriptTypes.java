// This is a generated file. Not intended for manual editing.
package guru.xgm.angelscript.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.angelscript.psi.tree.AngelScriptIElement;
import guru.xgm.angelscript.psi.tree.AngelScriptIToken;
import guru.xgm.angelscript.psi.impl.*;

public interface AngelScriptTypes {

  IElementType AND_EXPR = new AngelScriptIElement("AND_EXPR");
  IElementType ARG = new AngelScriptIElement("ARG");
  IElementType ARGS = new AngelScriptIElement("ARGS");
  IElementType ARG_LIST = new AngelScriptIElement("ARG_LIST");
  IElementType ARRAY_ACCESS = new AngelScriptIElement("ARRAY_ACCESS");
  IElementType ARRAY_ACCESS_ITEM = new AngelScriptIElement("ARRAY_ACCESS_ITEM");
  IElementType ASSIGN_EXPR = new AngelScriptIElement("ASSIGN_EXPR");
  IElementType BRACED_STMT = new AngelScriptIElement("BRACED_STMT");
  IElementType BREAK_STMT = new AngelScriptIElement("BREAK_STMT");
  IElementType CALL_EXPR = new AngelScriptIElement("CALL_EXPR");
  IElementType DIV_EXPR = new AngelScriptIElement("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new AngelScriptIElement("DIV_UNARY_EXPR");
  IElementType DO_STMT = new AngelScriptIElement("DO_STMT");
  IElementType ELSE_STMT = new AngelScriptIElement("ELSE_STMT");
  IElementType EQ_EXPR = new AngelScriptIElement("EQ_EXPR");
  IElementType EXPR = new AngelScriptIElement("EXPR");
  IElementType EXPR_STMT = new AngelScriptIElement("EXPR_STMT");
  IElementType FOR_EXPR = new AngelScriptIElement("FOR_EXPR");
  IElementType FOR_HEAD = new AngelScriptIElement("FOR_HEAD");
  IElementType FOR_OP = new AngelScriptIElement("FOR_OP");
  IElementType FOR_STMT = new AngelScriptIElement("FOR_STMT");
  IElementType FUNC_AS_CODE = new AngelScriptIElement("FUNC_AS_CODE");
  IElementType FUNC_BODY = new AngelScriptIElement("FUNC_BODY");
  IElementType FUNC_CALL_NAME = new AngelScriptIElement("FUNC_CALL_NAME");
  IElementType FUNC_DEF = new AngelScriptIElement("FUNC_DEF");
  IElementType FUNC_DEF_NAME = new AngelScriptIElement("FUNC_DEF_NAME");
  IElementType FUNC_RETURNS = new AngelScriptIElement("FUNC_RETURNS");
  IElementType GT_EQ_EXPR = new AngelScriptIElement("GT_EQ_EXPR");
  IElementType GT_EXPR = new AngelScriptIElement("GT_EXPR");
  IElementType IF_STMT = new AngelScriptIElement("IF_STMT");
  IElementType LAMBDA = new AngelScriptIElement("LAMBDA");
  IElementType LIB_DEF = new AngelScriptIElement("LIB_DEF");
  IElementType LIB_REQ = new AngelScriptIElement("LIB_REQ");
  IElementType LIB_REQ_ITEM = new AngelScriptIElement("LIB_REQ_ITEM");
  IElementType LIB_VIS_DEF = new AngelScriptIElement("LIB_VIS_DEF");
  IElementType LT_EQ_EXPR = new AngelScriptIElement("LT_EQ_EXPR");
  IElementType LT_EXPR = new AngelScriptIElement("LT_EXPR");
  IElementType METHOD_DEF = new AngelScriptIElement("METHOD_DEF");
  IElementType MINUS_EXPR = new AngelScriptIElement("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new AngelScriptIElement("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new AngelScriptIElement("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new AngelScriptIElement("MUL_UNARY_EXPR");
  IElementType NOT_EXPR = new AngelScriptIElement("NOT_EXPR");
  IElementType N_EQ_EXPR = new AngelScriptIElement("N_EQ_EXPR");
  IElementType OR_EXPR = new AngelScriptIElement("OR_EXPR");
  IElementType PAREN_EXPR = new AngelScriptIElement("PAREN_EXPR");
  IElementType PLUS_EXPR = new AngelScriptIElement("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new AngelScriptIElement("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new AngelScriptIElement("PRIMARY_EXPR");
  IElementType REF_EXPR = new AngelScriptIElement("REF_EXPR");
  IElementType RETURN_STMT = new AngelScriptIElement("RETURN_STMT");
  IElementType STRUCT_DEF = new AngelScriptIElement("STRUCT_DEF");
  IElementType STRUCT_STAT = new AngelScriptIElement("STRUCT_STAT");
  IElementType STRUCT_VIS = new AngelScriptIElement("STRUCT_VIS");
  IElementType TYPED_VAR = new AngelScriptIElement("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new AngelScriptIElement("TYPED_VAR_LIST");
  IElementType TYPE_NAME = new AngelScriptIElement("TYPE_NAME");
  IElementType VAR_BODY = new AngelScriptIElement("VAR_BODY");
  IElementType VAR_DEF = new AngelScriptIElement("VAR_DEF");
  IElementType VIS = new AngelScriptIElement("VIS");
  IElementType WHILE_STMT = new AngelScriptIElement("WHILE_STMT");

  IElementType AND_AND = new AngelScriptIToken("&&");
  IElementType BOOLEAN = new AngelScriptIToken("boolean");
  IElementType BREAK = new AngelScriptIToken("break");
  IElementType CODE = new AngelScriptIToken("code");
  IElementType COMMA = new AngelScriptIToken(",");
  IElementType CONSTANT = new AngelScriptIToken("constant");
  IElementType DEBUG = new AngelScriptIToken("debug");
  IElementType DIV = new AngelScriptIToken("/");
  IElementType DIV_EQ = new AngelScriptIToken("/=");
  IElementType DO = new AngelScriptIToken("do");
  IElementType DOT = new AngelScriptIToken(".");
  IElementType ELSE = new AngelScriptIToken("else");
  IElementType EQ = new AngelScriptIToken("=");
  IElementType EQ_EQ = new AngelScriptIToken("==");
  IElementType FALSE = new AngelScriptIToken("false");
  IElementType FOR = new AngelScriptIToken("for");
  IElementType FUNCTION = new AngelScriptIToken("function");
  IElementType GT = new AngelScriptIToken(">");
  IElementType GT_EQ = new AngelScriptIToken(">=");
  IElementType HANDLE = new AngelScriptIToken("handle");
  IElementType HEXVAL = new AngelScriptIToken("HEXVAL");
  IElementType ID = new AngelScriptIToken("ID");
  IElementType IF = new AngelScriptIToken("if");
  IElementType INTEGER = new AngelScriptIToken("integer");
  IElementType INTVAL = new AngelScriptIToken("INTVAL");
  IElementType KEY = new AngelScriptIToken("key");
  IElementType LBRACE = new AngelScriptIToken("{");
  IElementType LBRACK = new AngelScriptIToken("[");
  IElementType LIBRARY = new AngelScriptIToken("library");
  IElementType LPAREN = new AngelScriptIToken("(");
  IElementType LT = new AngelScriptIToken("<");
  IElementType LT_EQ = new AngelScriptIToken("<=");
  IElementType METHOD = new AngelScriptIToken("method");
  IElementType MINUS = new AngelScriptIToken("-");
  IElementType MINUS_EQ = new AngelScriptIToken("-=");
  IElementType MINUS_GT = new AngelScriptIToken("->");
  IElementType MUL = new AngelScriptIToken("*");
  IElementType MULTI_LINE_COMMENT = new AngelScriptIToken("MULTI_LINE_COMMENT");
  IElementType MUL_EQ = new AngelScriptIToken("*=");
  IElementType NEQ = new AngelScriptIToken("!=");
  IElementType NOT = new AngelScriptIToken("!");
  IElementType NOTHING = new AngelScriptIToken("nothing");
  IElementType NULL = new AngelScriptIToken("null");
  IElementType OPTIONAL = new AngelScriptIToken("optional");
  IElementType OR_OR = new AngelScriptIToken("||");
  IElementType PLUS = new AngelScriptIToken("+");
  IElementType PLUS_EQ = new AngelScriptIToken("+=");
  IElementType PRIVATE = new AngelScriptIToken("private");
  IElementType PUBLIC = new AngelScriptIToken("public");
  IElementType RAWVAL = new AngelScriptIToken("RAWVAL");
  IElementType RBRACE = new AngelScriptIToken("}");
  IElementType RBRACK = new AngelScriptIToken("]");
  IElementType REAL = new AngelScriptIToken("real");
  IElementType REALVAL = new AngelScriptIToken("REALVAL");
  IElementType REQUIRES = new AngelScriptIToken("requires");
  IElementType RETURN = new AngelScriptIToken("return");
  IElementType RPAREN = new AngelScriptIToken(")");
  IElementType SEMI = new AngelScriptIToken(";");
  IElementType SINGLE_LINE_COMMENT = new AngelScriptIToken("SINGLE_LINE_COMMENT");
  IElementType STATIC = new AngelScriptIToken("static");
  IElementType STRING = new AngelScriptIToken("string");
  IElementType STRUCT = new AngelScriptIToken("struct");
  IElementType STRVAL = new AngelScriptIToken("STRVAL");
  IElementType THISTYPE = new AngelScriptIToken("thistype");
  IElementType TRUE = new AngelScriptIToken("true");
  IElementType WHILE = new AngelScriptIToken("while");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPR) {
        return new AngelScriptAndExprImpl(node);
      }
      else if (type == ARG) {
        return new AngelScriptArgImpl(node);
      }
      else if (type == ARGS) {
        return new AngelScriptArgsImpl(node);
      }
      else if (type == ARG_LIST) {
        return new AngelScriptArgListImpl(node);
      }
      else if (type == ARRAY_ACCESS) {
        return new AngelScriptArrayAccessImpl(node);
      }
      else if (type == ARRAY_ACCESS_ITEM) {
        return new AngelScriptArrayAccessItemImpl(node);
      }
      else if (type == ASSIGN_EXPR) {
        return new AngelScriptAssignExprImpl(node);
      }
      else if (type == BRACED_STMT) {
        return new AngelScriptBracedStmtImpl(node);
      }
      else if (type == BREAK_STMT) {
        return new AngelScriptBreakStmtImpl(node);
      }
      else if (type == CALL_EXPR) {
        return new AngelScriptCallExprImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new AngelScriptDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new AngelScriptDivUnaryExprImpl(node);
      }
      else if (type == DO_STMT) {
        return new AngelScriptDoStmtImpl(node);
      }
      else if (type == ELSE_STMT) {
        return new AngelScriptElseStmtImpl(node);
      }
      else if (type == EQ_EXPR) {
        return new AngelScriptEqExprImpl(node);
      }
      else if (type == EXPR_STMT) {
        return new AngelScriptExprStmtImpl(node);
      }
      else if (type == FOR_HEAD) {
        return new AngelScriptForHeadImpl(node);
      }
      else if (type == FOR_OP) {
        return new AngelScriptForOpImpl(node);
      }
      else if (type == FOR_STMT) {
        return new AngelScriptForStmtImpl(node);
      }
      else if (type == FUNC_AS_CODE) {
        return new AngelScriptFuncAsCodeImpl(node);
      }
      else if (type == FUNC_BODY) {
        return new AngelScriptFuncBodyImpl(node);
      }
      else if (type == FUNC_CALL_NAME) {
        return new AngelScriptFuncCallNameImpl(node);
      }
      else if (type == FUNC_DEF) {
        return new AngelScriptFuncDefImpl(node);
      }
      else if (type == FUNC_DEF_NAME) {
        return new AngelScriptFuncDefNameImpl(node);
      }
      else if (type == FUNC_RETURNS) {
        return new AngelScriptFuncReturnsImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new AngelScriptGTEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new AngelScriptGTExprImpl(node);
      }
      else if (type == IF_STMT) {
        return new AngelScriptIfStmtImpl(node);
      }
      else if (type == LAMBDA) {
        return new AngelScriptLambdaImpl(node);
      }
      else if (type == LIB_DEF) {
        return new AngelScriptLibDefImpl(node);
      }
      else if (type == LIB_REQ) {
        return new AngelScriptLibReqImpl(node);
      }
      else if (type == LIB_REQ_ITEM) {
        return new AngelScriptLibReqItemImpl(node);
      }
      else if (type == LIB_VIS_DEF) {
        return new AngelScriptLibVisDefImpl(node);
      }
      else if (type == LT_EQ_EXPR) {
        return new AngelScriptLTEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new AngelScriptLTExprImpl(node);
      }
      else if (type == METHOD_DEF) {
        return new AngelScriptMethodDefImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new AngelScriptMinusExprImpl(node);
      }
      else if (type == MINUS_UNARY_EXPR) {
        return new AngelScriptMinusUnaryExprImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new AngelScriptMulExprImpl(node);
      }
      else if (type == MUL_UNARY_EXPR) {
        return new AngelScriptMulUnaryExprImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new AngelScriptNotExprImpl(node);
      }
      else if (type == N_EQ_EXPR) {
        return new AngelScriptNEqExprImpl(node);
      }
      else if (type == OR_EXPR) {
        return new AngelScriptOrExprImpl(node);
      }
      else if (type == PAREN_EXPR) {
        return new AngelScriptParenExprImpl(node);
      }
      else if (type == PLUS_EXPR) {
        return new AngelScriptPlusExprImpl(node);
      }
      else if (type == PLUS_UNARY_EXPR) {
        return new AngelScriptPlusUnaryExprImpl(node);
      }
      else if (type == PRIMARY_EXPR) {
        return new AngelScriptPrimaryExprImpl(node);
      }
      else if (type == REF_EXPR) {
        return new AngelScriptRefExprImpl(node);
      }
      else if (type == RETURN_STMT) {
        return new AngelScriptReturnStmtImpl(node);
      }
      else if (type == STRUCT_DEF) {
        return new AngelScriptStructDefImpl(node);
      }
      else if (type == STRUCT_STAT) {
        return new AngelScriptStructStatImpl(node);
      }
      else if (type == STRUCT_VIS) {
        return new AngelScriptStructVisImpl(node);
      }
      else if (type == TYPED_VAR) {
        return new AngelScriptTypedVarImpl(node);
      }
      else if (type == TYPED_VAR_LIST) {
        return new AngelScriptTypedVarListImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new AngelScriptTypeNameImpl(node);
      }
      else if (type == VAR_BODY) {
        return new AngelScriptVarBodyImpl(node);
      }
      else if (type == VAR_DEF) {
        return new AngelScriptVarDefImpl(node);
      }
      else if (type == VIS) {
        return new AngelScriptVisImpl(node);
      }
      else if (type == WHILE_STMT) {
        return new AngelScriptWhileStmtImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
