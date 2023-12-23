// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.zinc.psi.tree.ZincIElement;
import guru.xgm.zinc.psi.tree.ZincIToken;
import guru.xgm.zinc.psi.impl.*;

public interface ZincTypes {

  IElementType AND_EXPR = new ZincIElement("AND_EXPR");
  IElementType ARG = new ZincIElement("ARG");
  IElementType ARG_LIST = new ZincIElement("ARG_LIST");
  IElementType ARRAY_ACCESS = new ZincIElement("ARRAY_ACCESS");
  IElementType BRACED_STMT = new ZincIElement("BRACED_STMT");
  IElementType CALL_STMT = new ZincIElement("CALL_STMT");
  IElementType DIV_EXPR = new ZincIElement("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new ZincIElement("DIV_UNARY_EXPR");
  IElementType ELSE_STMT = new ZincIElement("ELSE_STMT");
  IElementType EQ_EXPR = new ZincIElement("EQ_EXPR");
  IElementType EXPR = new ZincIElement("EXPR");
  IElementType FOR_EXPR = new ZincIElement("FOR_EXPR");
  IElementType FOR_HEAD = new ZincIElement("FOR_HEAD");
  IElementType FOR_OP = new ZincIElement("FOR_OP");
  IElementType FOR_STMT = new ZincIElement("FOR_STMT");
  IElementType FUNC_ANON = new ZincIElement("FUNC_ANON");
  IElementType FUNC_AS_CODE = new ZincIElement("FUNC_AS_CODE");
  IElementType FUNC_BODY = new ZincIElement("FUNC_BODY");
  IElementType FUNC_CALL = new ZincIElement("FUNC_CALL");
  IElementType FUNC_CALL_NAME = new ZincIElement("FUNC_CALL_NAME");
  IElementType FUNC_DECL = new ZincIElement("FUNC_DECL");
  IElementType FUNC_DECL_NAME = new ZincIElement("FUNC_DECL_NAME");
  IElementType FUNC_RETURNS = new ZincIElement("FUNC_RETURNS");
  IElementType GT_EQ_EXPR = new ZincIElement("GT_EQ_EXPR");
  IElementType GT_EXPR = new ZincIElement("GT_EXPR");
  IElementType GVAR_BODY = new ZincIElement("GVAR_BODY");
  IElementType GVAR_DECL = new ZincIElement("GVAR_DECL");
  IElementType GVAR_NAME = new ZincIElement("GVAR_NAME");
  IElementType IF_STMT = new ZincIElement("IF_STMT");
  IElementType LIB_BODY = new ZincIElement("LIB_BODY");
  IElementType LIB_DECL = new ZincIElement("LIB_DECL");
  IElementType LIB_NAME = new ZincIElement("LIB_NAME");
  IElementType LT_EQ_EXPR = new ZincIElement("LT_EQ_EXPR");
  IElementType LT_EXPR = new ZincIElement("LT_EXPR");
  IElementType LVAR_BODY = new ZincIElement("LVAR_BODY");
  IElementType LVAR_STMT = new ZincIElement("LVAR_STMT");
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
  IElementType RETURN_STMT = new ZincIElement("RETURN_STMT");
  IElementType SET_STMT = new ZincIElement("SET_STMT");
  IElementType STMT = new ZincIElement("STMT");
  IElementType TYPED_VAR = new ZincIElement("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new ZincIElement("TYPED_VAR_LIST");
  IElementType TYPE_NAME = new ZincIElement("TYPE_NAME");
  IElementType VISIBILITY_DEF = new ZincIElement("VISIBILITY_DEF");

  IElementType AND_AND = new ZincIToken("&&");
  IElementType BLOCK_COMMENT = new ZincIToken("BLOCK_COMMENT");
  IElementType BOOLEAN = new ZincIToken("boolean");
  IElementType CODE = new ZincIToken("code");
  IElementType COMMA = new ZincIToken(",");
  IElementType CONSTANT = new ZincIToken("constant");
  IElementType DEBUG = new ZincIToken("DEBUG");
  IElementType DIV = new ZincIToken("/");
  IElementType ELSE = new ZincIToken("else");
  IElementType EQ = new ZincIToken("=");
  IElementType EQ_EQ = new ZincIToken("==");
  IElementType FALSE = new ZincIToken("FALSE");
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
  IElementType KEY = new ZincIToken("KEY");
  IElementType LBRACE = new ZincIToken("{");
  IElementType LBRACK = new ZincIToken("[");
  IElementType LIBRARY = new ZincIToken("library");
  IElementType LPAREN = new ZincIToken("(");
  IElementType LT = new ZincIToken("<");
  IElementType LT_EQ = new ZincIToken("<=");
  IElementType MINUS = new ZincIToken("-");
  IElementType MINUSGT = new ZincIToken("MINUSGT");
  IElementType MINUS_GT = new ZincIToken("->");
  IElementType MUL = new ZincIToken("*");
  IElementType NEQ = new ZincIToken("!=");
  IElementType NOT = new ZincIToken("NOT");
  IElementType NOTHING = new ZincIToken("nothing");
  IElementType NULL = new ZincIToken("NULL");
  IElementType OR_OR = new ZincIToken("||");
  IElementType PLUS = new ZincIToken("+");
  IElementType PRIVATE = new ZincIToken("private");
  IElementType PUBLIC = new ZincIToken("public");
  IElementType RAWVAL = new ZincIToken("RAWVAL");
  IElementType RBRACE = new ZincIToken("}");
  IElementType RBRACK = new ZincIToken("]");
  IElementType REAL = new ZincIToken("real");
  IElementType REALVAL = new ZincIToken("REALVAL");
  IElementType RETURN = new ZincIToken("return");
  IElementType RPAREN = new ZincIToken(")");
  IElementType SEMI = new ZincIToken(";");
  IElementType SINGLE_LINE_COMMENT = new ZincIToken("SINGLE_LINE_COMMENT");
  IElementType STRING = new ZincIToken("string");
  IElementType STRVAL = new ZincIToken("STRVAL");
  IElementType TRUE = new ZincIToken("TRUE");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPR) {
        return new ZincAndExprImpl(node);
      }
      else if (type == ARG) {
        return new ZincArgImpl(node);
      }
      else if (type == ARG_LIST) {
        return new ZincArgListImpl(node);
      }
      else if (type == ARRAY_ACCESS) {
        return new ZincArrayAccessImpl(node);
      }
      else if (type == BRACED_STMT) {
        return new ZincBracedStmtImpl(node);
      }
      else if (type == CALL_STMT) {
        return new ZincCallStmtImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new ZincDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new ZincDivUnaryExprImpl(node);
      }
      else if (type == ELSE_STMT) {
        return new ZincElseStmtImpl(node);
      }
      else if (type == EQ_EXPR) {
        return new ZincEqExprImpl(node);
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
      else if (type == FUNC_ANON) {
        return new ZincFuncAnonImpl(node);
      }
      else if (type == FUNC_AS_CODE) {
        return new ZincFuncAsCodeImpl(node);
      }
      else if (type == FUNC_BODY) {
        return new ZincFuncBodyImpl(node);
      }
      else if (type == FUNC_CALL) {
        return new ZincFuncCallImpl(node);
      }
      else if (type == FUNC_CALL_NAME) {
        return new ZincFuncCallNameImpl(node);
      }
      else if (type == FUNC_DECL) {
        return new ZincFuncDeclImpl(node);
      }
      else if (type == FUNC_DECL_NAME) {
        return new ZincFuncDeclNameImpl(node);
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
      else if (type == GVAR_BODY) {
        return new ZincGvarBodyImpl(node);
      }
      else if (type == GVAR_DECL) {
        return new ZincGvarDeclImpl(node);
      }
      else if (type == GVAR_NAME) {
        return new ZincGvarNameImpl(node);
      }
      else if (type == IF_STMT) {
        return new ZincIfStmtImpl(node);
      }
      else if (type == LIB_BODY) {
        return new ZincLibBodyImpl(node);
      }
      else if (type == LIB_DECL) {
        return new ZincLibDeclImpl(node);
      }
      else if (type == LIB_NAME) {
        return new ZincLibNameImpl(node);
      }
      else if (type == LT_EQ_EXPR) {
        return new ZincLTEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new ZincLTExprImpl(node);
      }
      else if (type == LVAR_BODY) {
        return new ZincLvarBodyImpl(node);
      }
      else if (type == LVAR_STMT) {
        return new ZincLvarStmtImpl(node);
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
      else if (type == RETURN_STMT) {
        return new ZincReturnStmtImpl(node);
      }
      else if (type == SET_STMT) {
        return new ZincSetStmtImpl(node);
      }
      else if (type == STMT) {
        return new ZincStmtImpl(node);
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
      else if (type == VISIBILITY_DEF) {
        return new ZincVisibilityDefImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
