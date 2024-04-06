// This is a generated file. Not intended for manual editing.
package guru.xgm.language.zinc.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.language.zinc.psi.tree.ZincIElement;
import guru.xgm.language.zinc.psi.tree.ZincIToken;
import guru.xgm.language.zinc.psi.impl.*;

public interface ZincTypes {

  IElementType AND_EXPR = new ZincIElement("AND_EXPR");
  IElementType ARG = new ZincIElement("ARG");
  IElementType ARGS = new ZincIElement("ARGS");
  IElementType ARG_LIST = new ZincIElement("ARG_LIST");
  IElementType ARRAY_ACCESS = new ZincIElement("ARRAY_ACCESS");
  IElementType ARRAY_ACCESS_ITEM = new ZincIElement("ARRAY_ACCESS_ITEM");
  IElementType ASSIGN_EXPR = new ZincIElement("ASSIGN_EXPR");
  IElementType BRACED_STMT = new ZincIElement("BRACED_STMT");
  IElementType BREAK_STMT = new ZincIElement("BREAK_STMT");
  IElementType CALL_EXPR = new ZincIElement("CALL_EXPR");
  IElementType DIV_EXPR = new ZincIElement("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new ZincIElement("DIV_UNARY_EXPR");
  IElementType DO_STMT = new ZincIElement("DO_STMT");
  IElementType ELSE_STMT = new ZincIElement("ELSE_STMT");
  IElementType EQ_EXPR = new ZincIElement("EQ_EXPR");
  IElementType EXPR = new ZincIElement("EXPR");
  IElementType EXPR_STMT = new ZincIElement("EXPR_STMT");
  IElementType FOR_EXPR = new ZincIElement("FOR_EXPR");
  IElementType FOR_HEAD = new ZincIElement("FOR_HEAD");
  IElementType FOR_OP = new ZincIElement("FOR_OP");
  IElementType FOR_STMT = new ZincIElement("FOR_STMT");
  IElementType FUNC_AS_CODE = new ZincIElement("FUNC_AS_CODE");
  IElementType FUNC_BODY = new ZincIElement("FUNC_BODY");
  IElementType FUNC_CALL_NAME = new ZincIElement("FUNC_CALL_NAME");
  IElementType FUNC_DEF = new ZincIElement("FUNC_DEF");
  IElementType FUNC_DEF_NAME = new ZincIElement("FUNC_DEF_NAME");
  IElementType FUNC_RETURNS = new ZincIElement("FUNC_RETURNS");
  IElementType GT_EQ_EXPR = new ZincIElement("GT_EQ_EXPR");
  IElementType GT_EXPR = new ZincIElement("GT_EXPR");
  IElementType IF_STMT = new ZincIElement("IF_STMT");
  IElementType LAMBDA = new ZincIElement("LAMBDA");
  IElementType LIB_DEF = new ZincIElement("LIB_DEF");
  IElementType LIB_REQ = new ZincIElement("LIB_REQ");
  IElementType LIB_REQ_ITEM = new ZincIElement("LIB_REQ_ITEM");
  IElementType LIB_VIS_DEF = new ZincIElement("LIB_VIS_DEF");
  IElementType LT_EQ_EXPR = new ZincIElement("LT_EQ_EXPR");
  IElementType LT_EXPR = new ZincIElement("LT_EXPR");
  IElementType METHOD_DEF = new ZincIElement("METHOD_DEF");
  IElementType MINUS_EXPR = new ZincIElement("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new ZincIElement("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new ZincIElement("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new ZincIElement("MUL_UNARY_EXPR");
  IElementType NOT_EXPR = new ZincIElement("NOT_EXPR");
  IElementType N_EQ_EXPR = new ZincIElement("N_EQ_EXPR");
  IElementType OR_EXPR = new ZincIElement("OR_EXPR");
  IElementType PAREN_EXPR = new ZincIElement("PAREN_EXPR");
  IElementType PLUS_EXPR = new ZincIElement("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new ZincIElement("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new ZincIElement("PRIMARY_EXPR");
  IElementType REF_EXPR = new ZincIElement("REF_EXPR");
  IElementType RETURN_STMT = new ZincIElement("RETURN_STMT");
  IElementType STRUCT_DEF = new ZincIElement("STRUCT_DEF");
  IElementType STRUCT_STAT = new ZincIElement("STRUCT_STAT");
  IElementType STRUCT_VIS = new ZincIElement("STRUCT_VIS");
  IElementType TYPED_VAR = new ZincIElement("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new ZincIElement("TYPED_VAR_LIST");
  IElementType TYPE_NAME = new ZincIElement("TYPE_NAME");
  IElementType VAR_BODY = new ZincIElement("VAR_BODY");
  IElementType VAR_DEF = new ZincIElement("VAR_DEF");
  IElementType VIS = new ZincIElement("VIS");
  IElementType WHILE_STMT = new ZincIElement("WHILE_STMT");

  IElementType AND_AND = new ZincIToken("&&");
  IElementType BLOCK_COMMENT = new ZincIToken("BLOCK_COMMENT");
  IElementType BOOLEAN = new ZincIToken("boolean");
  IElementType BREAK = new ZincIToken("break");
  IElementType CODE = new ZincIToken("code");
  IElementType COMMA = new ZincIToken(",");
  IElementType CONSTANT = new ZincIToken("constant");
  IElementType DEBUG = new ZincIToken("debug");
  IElementType DIV = new ZincIToken("/");
  IElementType DIV_EQ = new ZincIToken("/=");
  IElementType DO = new ZincIToken("do");
  IElementType DOT = new ZincIToken(".");
  IElementType ELSE = new ZincIToken("else");
  IElementType EQ = new ZincIToken("=");
  IElementType EQ_EQ = new ZincIToken("==");
  IElementType FALSE = new ZincIToken("false");
  IElementType FOR = new ZincIToken("for");
  IElementType FUNCTION = new ZincIToken("function");
  IElementType GT = new ZincIToken(">");
  IElementType GT_EQ = new ZincIToken(">=");
  IElementType HANDLE = new ZincIToken("handle");
  IElementType HEXVAL = new ZincIToken("HEXVAL");
  IElementType ID = new ZincIToken("ID");
  IElementType IF = new ZincIToken("if");
  IElementType INTEGER = new ZincIToken("integer");
  IElementType INTVAL = new ZincIToken("INTVAL");
  IElementType KEY = new ZincIToken("key");
  IElementType LBRACE = new ZincIToken("{");
  IElementType LBRACK = new ZincIToken("[");
  IElementType LIBRARY = new ZincIToken("library");
  IElementType LINE_COMMENT = new ZincIToken("LINE_COMMENT");
  IElementType LPAREN = new ZincIToken("(");
  IElementType LT = new ZincIToken("<");
  IElementType LT_EQ = new ZincIToken("<=");
  IElementType METHOD = new ZincIToken("method");
  IElementType MINUS = new ZincIToken("-");
  IElementType MINUS_EQ = new ZincIToken("-=");
  IElementType MINUS_GT = new ZincIToken("->");
  IElementType MUL = new ZincIToken("*");
  IElementType MUL_EQ = new ZincIToken("*=");
  IElementType NEQ = new ZincIToken("!=");
  IElementType NOT = new ZincIToken("!");
  IElementType NOTHING = new ZincIToken("nothing");
  IElementType NULL = new ZincIToken("null");
  IElementType OPTIONAL = new ZincIToken("optional");
  IElementType OR_OR = new ZincIToken("||");
  IElementType PLUS = new ZincIToken("+");
  IElementType PLUS_EQ = new ZincIToken("+=");
  IElementType PRIVATE = new ZincIToken("private");
  IElementType PUBLIC = new ZincIToken("public");
  IElementType RAWVAL = new ZincIToken("RAWVAL");
  IElementType RBRACE = new ZincIToken("}");
  IElementType RBRACK = new ZincIToken("]");
  IElementType REAL = new ZincIToken("real");
  IElementType REALVAL = new ZincIToken("REALVAL");
  IElementType REQUIRES = new ZincIToken("requires");
  IElementType RETURN = new ZincIToken("return");
  IElementType RPAREN = new ZincIToken(")");
  IElementType SEMI = new ZincIToken(";");
  IElementType STATIC = new ZincIToken("static");
  IElementType STRING = new ZincIToken("string");
  IElementType STRUCT = new ZincIToken("struct");
  IElementType STRVAL = new ZincIToken("STRVAL");
  IElementType THISTYPE = new ZincIToken("thistype");
  IElementType TRUE = new ZincIToken("true");
  IElementType WHILE = new ZincIToken("while");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPR) {
        return new ZincAndExprImpl(node);
      }
      else if (type == ARG) {
        return new ZincArgImpl(node);
      }
      else if (type == ARGS) {
        return new ZincArgsImpl(node);
      }
      else if (type == ARG_LIST) {
        return new ZincArgListImpl(node);
      }
      else if (type == ARRAY_ACCESS) {
        return new ZincArrayAccessImpl(node);
      }
      else if (type == ARRAY_ACCESS_ITEM) {
        return new ZincArrayAccessItemImpl(node);
      }
      else if (type == ASSIGN_EXPR) {
        return new ZincAssignExprImpl(node);
      }
      else if (type == BRACED_STMT) {
        return new ZincBracedStmtImpl(node);
      }
      else if (type == BREAK_STMT) {
        return new ZincBreakStmtImpl(node);
      }
      else if (type == CALL_EXPR) {
        return new ZincCallExprImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new ZincDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new ZincDivUnaryExprImpl(node);
      }
      else if (type == DO_STMT) {
        return new ZincDoStmtImpl(node);
      }
      else if (type == ELSE_STMT) {
        return new ZincElseStmtImpl(node);
      }
      else if (type == EQ_EXPR) {
        return new ZincEqExprImpl(node);
      }
      else if (type == EXPR_STMT) {
        return new ZincExprStmtImpl(node);
      }
      else if (type == FOR_HEAD) {
        return new ZincForHeadImpl(node);
      }
      else if (type == FOR_OP) {
        return new ZincForOpImpl(node);
      }
      else if (type == FOR_STMT) {
        return new ZincForStmtImpl(node);
      }
      else if (type == FUNC_AS_CODE) {
        return new ZincFuncAsCodeImpl(node);
      }
      else if (type == FUNC_BODY) {
        return new ZincFuncBodyImpl(node);
      }
      else if (type == FUNC_CALL_NAME) {
        return new ZincFuncCallNameImpl(node);
      }
      else if (type == FUNC_DEF) {
        return new ZincFuncDefImpl(node);
      }
      else if (type == FUNC_DEF_NAME) {
        return new ZincFuncDefNameImpl(node);
      }
      else if (type == FUNC_RETURNS) {
        return new ZincFuncReturnsImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new ZincGTEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new ZincGTExprImpl(node);
      }
      else if (type == IF_STMT) {
        return new ZincIfStmtImpl(node);
      }
      else if (type == LAMBDA) {
        return new ZincLambdaImpl(node);
      }
      else if (type == LIB_DEF) {
        return new ZincLibDefImpl(node);
      }
      else if (type == LIB_REQ) {
        return new ZincLibReqImpl(node);
      }
      else if (type == LIB_REQ_ITEM) {
        return new ZincLibReqItemImpl(node);
      }
      else if (type == LIB_VIS_DEF) {
        return new ZincLibVisDefImpl(node);
      }
      else if (type == LT_EQ_EXPR) {
        return new ZincLTEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new ZincLTExprImpl(node);
      }
      else if (type == METHOD_DEF) {
        return new ZincMethodDefImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new ZincMinusExprImpl(node);
      }
      else if (type == MINUS_UNARY_EXPR) {
        return new ZincMinusUnaryExprImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new ZincMulExprImpl(node);
      }
      else if (type == MUL_UNARY_EXPR) {
        return new ZincMulUnaryExprImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new ZincNotExprImpl(node);
      }
      else if (type == N_EQ_EXPR) {
        return new ZincNEqExprImpl(node);
      }
      else if (type == OR_EXPR) {
        return new ZincOrExprImpl(node);
      }
      else if (type == PAREN_EXPR) {
        return new ZincParenExprImpl(node);
      }
      else if (type == PLUS_EXPR) {
        return new ZincPlusExprImpl(node);
      }
      else if (type == PLUS_UNARY_EXPR) {
        return new ZincPlusUnaryExprImpl(node);
      }
      else if (type == PRIMARY_EXPR) {
        return new ZincPrimaryExprImpl(node);
      }
      else if (type == REF_EXPR) {
        return new ZincRefExprImpl(node);
      }
      else if (type == RETURN_STMT) {
        return new ZincReturnStmtImpl(node);
      }
      else if (type == STRUCT_DEF) {
        return new ZincStructDefImpl(node);
      }
      else if (type == STRUCT_STAT) {
        return new ZincStructStatImpl(node);
      }
      else if (type == STRUCT_VIS) {
        return new ZincStructVisImpl(node);
      }
      else if (type == TYPED_VAR) {
        return new ZincTypedVarImpl(node);
      }
      else if (type == TYPED_VAR_LIST) {
        return new ZincTypedVarListImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new ZincTypeNameImpl(node);
      }
      else if (type == VAR_BODY) {
        return new ZincVarBodyImpl(node);
      }
      else if (type == VAR_DEF) {
        return new ZincVarDefImpl(node);
      }
      else if (type == VIS) {
        return new ZincVisImpl(node);
      }
      else if (type == WHILE_STMT) {
        return new ZincWhileStmtImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
