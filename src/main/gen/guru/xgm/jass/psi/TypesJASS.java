// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Element;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Token;
import guru.xgm.jass.psi.impl.*;

public interface TypesJASS {

  IElementType AND_EXPR = new IElementTypeJASS_Element("AND_EXPR");
  IElementType ARG = new IElementTypeJASS_Element("ARG");
  IElementType ARG_CODE = new IElementTypeJASS_Element("ARG_CODE");
  IElementType ARG_LIST = new IElementTypeJASS_Element("ARG_LIST");
  IElementType ARRAY_ACCESS = new IElementTypeJASS_Element("ARRAY_ACCESS");
  IElementType CALL_STMT = new IElementTypeJASS_Element("CALL_STMT");
  IElementType DIV_EXPR = new IElementTypeJASS_Element("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new IElementTypeJASS_Element("DIV_UNARY_EXPR");
  IElementType ELSE_IF_STMT = new IElementTypeJASS_Element("ELSE_IF_STMT");
  IElementType ELSE_STMT = new IElementTypeJASS_Element("ELSE_STMT");
  IElementType EQ_EXPR = new IElementTypeJASS_Element("EQ_EXPR");
  IElementType EXIT_WHEN_STMT = new IElementTypeJASS_Element("EXIT_WHEN_STMT");
  IElementType EXPR = new IElementTypeJASS_Element("EXPR");
  IElementType FUNC_CALL = new IElementTypeJASS_Element("FUNC_CALL");
  IElementType FUNC_CALL_NAME = new IElementTypeJASS_Element("FUNC_CALL_NAME");
  IElementType FUNC_DECL = new IElementTypeJASS_Element("FUNC_DECL");
  IElementType FUNC_DECL_NAME = new IElementTypeJASS_Element("FUNC_DECL_NAME");
  IElementType FUNC_RETURNS = new IElementTypeJASS_Element("FUNC_RETURNS");
  IElementType FUNC_TAKES = new IElementTypeJASS_Element("FUNC_TAKES");
  IElementType GLOBALS_DECL = new IElementTypeJASS_Element("GLOBALS_DECL");
  IElementType GLOBAL_VAR_DECL = new IElementTypeJASS_Element("GLOBAL_VAR_DECL");
  IElementType GT_EQ_EXPR = new IElementTypeJASS_Element("GT_EQ_EXPR");
  IElementType GT_EXPR = new IElementTypeJASS_Element("GT_EXPR");
  IElementType IF_STMT = new IElementTypeJASS_Element("IF_STMT");
  IElementType LOCAL_VAR_STMT = new IElementTypeJASS_Element("LOCAL_VAR_STMT");
  IElementType LOOP_STMT = new IElementTypeJASS_Element("LOOP_STMT");
  IElementType LT_EQ_EXPR = new IElementTypeJASS_Element("LT_EQ_EXPR");
  IElementType LT_EXPR = new IElementTypeJASS_Element("LT_EXPR");
  IElementType MINUS_EXPR = new IElementTypeJASS_Element("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new IElementTypeJASS_Element("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new IElementTypeJASS_Element("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new IElementTypeJASS_Element("MUL_UNARY_EXPR");
  IElementType NATIVE_DECL = new IElementTypeJASS_Element("NATIVE_DECL");
  IElementType NOT_EXPR = new IElementTypeJASS_Element("NOT_EXPR");
  IElementType N_EQ_EXPR = new IElementTypeJASS_Element("N_EQ_EXPR");
  IElementType OR_EXPR = new IElementTypeJASS_Element("OR_EXPR");
  IElementType PAREN_EXPR = new IElementTypeJASS_Element("PAREN_EXPR");
  IElementType PLUS_EXPR = new IElementTypeJASS_Element("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new IElementTypeJASS_Element("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new IElementTypeJASS_Element("PRIMARY_EXPR");
  IElementType RETURN_STMT = new IElementTypeJASS_Element("RETURN_STMT");
  IElementType SET_STMT = new IElementTypeJASS_Element("SET_STMT");
  IElementType STMT = new IElementTypeJASS_Element("STMT");
  IElementType TYPED_VAR = new IElementTypeJASS_Element("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new IElementTypeJASS_Element("TYPED_VAR_LIST");
  IElementType TYPE_DECL = new IElementTypeJASS_Element("TYPE_DECL");
  IElementType TYPE_NAME = new IElementTypeJASS_Element("TYPE_NAME");

  IElementType AND = new IElementTypeJASS_Token("and");
  IElementType ARRAY = new IElementTypeJASS_Token("array");
  IElementType BOOLEAN = new IElementTypeJASS_Token("boolean");
  IElementType CALL = new IElementTypeJASS_Token("call");
  IElementType CODE = new IElementTypeJASS_Token("code");
  IElementType COMMA = new IElementTypeJASS_Token(",");
  IElementType CONSTANT = new IElementTypeJASS_Token("constant");
  IElementType DEBUG = new IElementTypeJASS_Token("debug");
  IElementType DIV = new IElementTypeJASS_Token("/");
  IElementType ELSE = new IElementTypeJASS_Token("else");
  IElementType ELSEIF = new IElementTypeJASS_Token("elseif");
  IElementType ENDFUNCTION = new IElementTypeJASS_Token("endfunction");
  IElementType ENDGLOBALS = new IElementTypeJASS_Token("endglobals");
  IElementType ENDIF = new IElementTypeJASS_Token("endif");
  IElementType ENDLOOP = new IElementTypeJASS_Token("endloop");
  IElementType EQ = new IElementTypeJASS_Token("=");
  IElementType EQEQ = new IElementTypeJASS_Token("==");
  IElementType EXITWHEN = new IElementTypeJASS_Token("exitwhen");
  IElementType EXTENDS = new IElementTypeJASS_Token("extends");
  IElementType FALSE = new IElementTypeJASS_Token("false");
  IElementType FUNCTION = new IElementTypeJASS_Token("function");
  IElementType GLOBALS = new IElementTypeJASS_Token("globals");
  IElementType GT = new IElementTypeJASS_Token(">");
  IElementType GTEQ = new IElementTypeJASS_Token(">=");
  IElementType HANDLE = new IElementTypeJASS_Token("handle");
  IElementType HEXVAL = new IElementTypeJASS_Token("HEXVAL");
  IElementType ID = new IElementTypeJASS_Token("ID");
  IElementType IF = new IElementTypeJASS_Token("if");
  IElementType INTEGER = new IElementTypeJASS_Token("integer");
  IElementType INTVAL = new IElementTypeJASS_Token("INTVAL");
  IElementType LB = new IElementTypeJASS_Token("[");
  IElementType LOCAL = new IElementTypeJASS_Token("local");
  IElementType LOOP = new IElementTypeJASS_Token("loop");
  IElementType LP = new IElementTypeJASS_Token("(");
  IElementType LT = new IElementTypeJASS_Token("<");
  IElementType LTEQ = new IElementTypeJASS_Token("<=");
  IElementType MINUS = new IElementTypeJASS_Token("-");
  IElementType MUL = new IElementTypeJASS_Token("*");
  IElementType NATIVE = new IElementTypeJASS_Token("native");
  IElementType NEQ = new IElementTypeJASS_Token("!=");
  IElementType NOT = new IElementTypeJASS_Token("not");
  IElementType NOTHING = new IElementTypeJASS_Token("nothing");
  IElementType NULL = new IElementTypeJASS_Token("null");
  IElementType OR = new IElementTypeJASS_Token("or");
  IElementType PLUS = new IElementTypeJASS_Token("+");
  IElementType RAWVAL = new IElementTypeJASS_Token("RAWVAL");
  IElementType RB = new IElementTypeJASS_Token("]");
  IElementType REAL = new IElementTypeJASS_Token("real");
  IElementType REALVAL = new IElementTypeJASS_Token("REALVAL");
  IElementType RETURN = new IElementTypeJASS_Token("return");
  IElementType RETURNS = new IElementTypeJASS_Token("returns");
  IElementType RP = new IElementTypeJASS_Token(")");
  IElementType SET = new IElementTypeJASS_Token("set");
  IElementType SINGLE_LINE_COMMENT = new IElementTypeJASS_Token("SINGLE_LINE_COMMENT");
  IElementType STRING = new IElementTypeJASS_Token("string");
  IElementType STRVAL = new IElementTypeJASS_Token("STRVAL");
  IElementType TAKES = new IElementTypeJASS_Token("takes");
  IElementType THEN = new IElementTypeJASS_Token("then");
  IElementType TRUE = new IElementTypeJASS_Token("true");
  IElementType TYPE = new IElementTypeJASS_Token("type");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPR) {
        return new JASSAndExprImpl(node);
      }
      else if (type == ARG) {
        return new JASSArgImpl(node);
      }
      else if (type == ARG_CODE) {
        return new JASSArgCodeImpl(node);
      }
      else if (type == ARG_LIST) {
        return new JASSArgListImpl(node);
      }
      else if (type == ARRAY_ACCESS) {
        return new JASSArrayAccessImpl(node);
      }
      else if (type == CALL_STMT) {
        return new JASSCallStmtImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new JASSDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new JASSDivUnaryExprImpl(node);
      }
      else if (type == ELSE_IF_STMT) {
        return new JASSElseIfStmtImpl(node);
      }
      else if (type == ELSE_STMT) {
        return new JASSElseStmtImpl(node);
      }
      else if (type == EQ_EXPR) {
        return new JASSEqExprImpl(node);
      }
      else if (type == EXIT_WHEN_STMT) {
        return new JASSExitWhenStmtImpl(node);
      }
      else if (type == FUNC_CALL) {
        return new JASSFuncCallImpl(node);
      }
      else if (type == FUNC_CALL_NAME) {
        return new JASSFuncCallNameImpl(node);
      }
      else if (type == FUNC_DECL) {
        return new JASSFuncDeclImpl(node);
      }
      else if (type == FUNC_DECL_NAME) {
        return new JASSFuncDeclNameImpl(node);
      }
      else if (type == FUNC_RETURNS) {
        return new JASSFuncReturnsImpl(node);
      }
      else if (type == FUNC_TAKES) {
        return new JASSFuncTakesImpl(node);
      }
      else if (type == GLOBALS_DECL) {
        return new JASSGlobalsDeclImpl(node);
      }
      else if (type == GLOBAL_VAR_DECL) {
        return new JASSGlobalVarDeclImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new JASSGTEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new JASSGTExprImpl(node);
      }
      else if (type == IF_STMT) {
        return new JASSIfStmtImpl(node);
      }
      else if (type == LOCAL_VAR_STMT) {
        return new JASSLocalVarStmtImpl(node);
      }
      else if (type == LOOP_STMT) {
        return new JASSLoopStmtImpl(node);
      }
      else if (type == LT_EQ_EXPR) {
        return new JASSLTEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new JASSLTExprImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new JASSMinusExprImpl(node);
      }
      else if (type == MINUS_UNARY_EXPR) {
        return new JASSMinusUnaryExprImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new JASSMulExprImpl(node);
      }
      else if (type == MUL_UNARY_EXPR) {
        return new JASSMulUnaryExprImpl(node);
      }
      else if (type == NATIVE_DECL) {
        return new JASSNativeDeclImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new JASSNotExprImpl(node);
      }
      else if (type == N_EQ_EXPR) {
        return new JASSNEqExprImpl(node);
      }
      else if (type == OR_EXPR) {
        return new JASSOrExprImpl(node);
      }
      else if (type == PAREN_EXPR) {
        return new JASSParenExprImpl(node);
      }
      else if (type == PLUS_EXPR) {
        return new JASSPlusExprImpl(node);
      }
      else if (type == PLUS_UNARY_EXPR) {
        return new JASSPlusUnaryExprImpl(node);
      }
      else if (type == PRIMARY_EXPR) {
        return new JASSPrimaryExprImpl(node);
      }
      else if (type == RETURN_STMT) {
        return new JASSReturnStmtImpl(node);
      }
      else if (type == SET_STMT) {
        return new JASSSetStmtImpl(node);
      }
      else if (type == STMT) {
        return new JASSStmtImpl(node);
      }
      else if (type == TYPED_VAR) {
        return new JASSTypedVarImpl(node);
      }
      else if (type == TYPED_VAR_LIST) {
        return new JASSTypedVarListImpl(node);
      }
      else if (type == TYPE_DECL) {
        return new JASSTypeDeclImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new JASSTypeNameImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
