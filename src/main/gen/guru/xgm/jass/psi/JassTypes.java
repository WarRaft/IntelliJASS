// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.JassIElement;
import guru.xgm.jass.psi.tree.JassIToken;
import guru.xgm.jass.psi.impl.*;

public interface JassTypes {

  IElementType AND_EXPR = new JassIElement("AND_EXPR");
  IElementType ARG = new JassIElement("ARG");
  IElementType ARG_LIST = new JassIElement("ARG_LIST");
  IElementType ARRAY_ACCESS = new JassIElement("ARRAY_ACCESS");
  IElementType CALL_STMT = new JassIElement("CALL_STMT");
  IElementType DIV_EXPR = new JassIElement("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new JassIElement("DIV_UNARY_EXPR");
  IElementType ELSE_IF_STMT = new JassIElement("ELSE_IF_STMT");
  IElementType ELSE_STMT = new JassIElement("ELSE_STMT");
  IElementType EQ_EXPR = new JassIElement("EQ_EXPR");
  IElementType EXIT_WHEN_STMT = new JassIElement("EXIT_WHEN_STMT");
  IElementType EXPR = new JassIElement("EXPR");
  IElementType FUNC_AS_CODE = new JassIElement("FUNC_AS_CODE");
  IElementType FUNC_CALL = new JassIElement("FUNC_CALL");
  IElementType FUNC_CALL_NAME = new JassIElement("FUNC_CALL_NAME");
  IElementType FUNC_DEF = new JassIElement("FUNC_DEF");
  IElementType FUNC_DEF_NAME = new JassIElement("FUNC_DEF_NAME");
  IElementType FUNC_RETURNS = new JassIElement("FUNC_RETURNS");
  IElementType FUNC_TAKES = new JassIElement("FUNC_TAKES");
  IElementType GLOBALS_DEF = new JassIElement("GLOBALS_DEF");
  IElementType GT_EQ_EXPR = new JassIElement("GT_EQ_EXPR");
  IElementType GT_EXPR = new JassIElement("GT_EXPR");
  IElementType GVAR_DEF = new JassIElement("GVAR_DEF");
  IElementType GVAR_NAME = new JassIElement("GVAR_NAME");
  IElementType IF_STMT = new JassIElement("IF_STMT");
  IElementType LOCAL_VAR_STMT = new JassIElement("LOCAL_VAR_STMT");
  IElementType LOOP_STMT = new JassIElement("LOOP_STMT");
  IElementType LT_EQ_EXPR = new JassIElement("LT_EQ_EXPR");
  IElementType LT_EXPR = new JassIElement("LT_EXPR");
  IElementType MINUS_EXPR = new JassIElement("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new JassIElement("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new JassIElement("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new JassIElement("MUL_UNARY_EXPR");
  IElementType NATIVE_DEF = new JassIElement("NATIVE_DEF");
  IElementType NEQ_EXPR = new JassIElement("NEQ_EXPR");
  IElementType NOT_EXPR = new JassIElement("NOT_EXPR");
  IElementType OR_EXPR = new JassIElement("OR_EXPR");
  IElementType PAREN_EXPR = new JassIElement("PAREN_EXPR");
  IElementType PLUS_EXPR = new JassIElement("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new JassIElement("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new JassIElement("PRIMARY_EXPR");
  IElementType RETURN_STMT = new JassIElement("RETURN_STMT");
  IElementType SET_STMT = new JassIElement("SET_STMT");
  IElementType STMT = new JassIElement("STMT");
  IElementType TYPED_VAR = new JassIElement("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new JassIElement("TYPED_VAR_LIST");
  IElementType TYPE_DEF = new JassIElement("TYPE_DEF");
  IElementType TYPE_NAME = new JassIElement("TYPE_NAME");
  IElementType TYPE_NAME_BASE = new JassIElement("TYPE_NAME_BASE");

  IElementType AND = new JassIToken("and");
  IElementType ARRAY = new JassIToken("array");
  IElementType BOOLEAN = new JassIToken("boolean");
  IElementType CALL = new JassIToken("call");
  IElementType CODE = new JassIToken("code");
  IElementType COMMA = new JassIToken(",");
  IElementType CONSTANT = new JassIToken("constant");
  IElementType DEBUG = new JassIToken("debug");
  IElementType DIV = new JassIToken("/");
  IElementType ELSE = new JassIToken("else");
  IElementType ELSEIF = new JassIToken("elseif");
  IElementType ENDFUNCTION = new JassIToken("endfunction");
  IElementType ENDGLOBALS = new JassIToken("endglobals");
  IElementType ENDIF = new JassIToken("endif");
  IElementType ENDLOOP = new JassIToken("endloop");
  IElementType EQ = new JassIToken("=");
  IElementType EQ_EQ = new JassIToken("==");
  IElementType EXITWHEN = new JassIToken("exitwhen");
  IElementType EXTENDS = new JassIToken("extends");
  IElementType FALSE = new JassIToken("false");
  IElementType FUNCTION = new JassIToken("function");
  IElementType GLOBALS = new JassIToken("globals");
  IElementType GT = new JassIToken(">");
  IElementType GT_EQ = new JassIToken(">=");
  IElementType HANDLE = new JassIToken("handle");
  IElementType HEXVAL = new JassIToken("HEXVAL");
  IElementType ID = new JassIToken("ID");
  IElementType IF = new JassIToken("if");
  IElementType INTEGER = new JassIToken("integer");
  IElementType INTVAL = new JassIToken("INTVAL");
  IElementType LBRACK = new JassIToken("[");
  IElementType LOCAL = new JassIToken("local");
  IElementType LOOP = new JassIToken("loop");
  IElementType LPAREN = new JassIToken("(");
  IElementType LT = new JassIToken("<");
  IElementType LT_EQ = new JassIToken("<=");
  IElementType MINUS = new JassIToken("-");
  IElementType MUL = new JassIToken("*");
  IElementType NATIVE = new JassIToken("native");
  IElementType NEQ = new JassIToken("!=");
  IElementType NOT = new JassIToken("not");
  IElementType NOTHING = new JassIToken("nothing");
  IElementType NULL = new JassIToken("null");
  IElementType OR = new JassIToken("or");
  IElementType PLUS = new JassIToken("+");
  IElementType RAWVAL = new JassIToken("RAWVAL");
  IElementType RBRACK = new JassIToken("]");
  IElementType REAL = new JassIToken("real");
  IElementType REALVAL = new JassIToken("REALVAL");
  IElementType RETURN = new JassIToken("return");
  IElementType RETURNS = new JassIToken("returns");
  IElementType RPAREN = new JassIToken(")");
  IElementType SET = new JassIToken("set");
  IElementType SINGLE_LINE_COMMENT = new JassIToken("SINGLE_LINE_COMMENT");
  IElementType STRING = new JassIToken("string");
  IElementType STRVAL = new JassIToken("STRVAL");
  IElementType TAKES = new JassIToken("takes");
  IElementType THEN = new JassIToken("then");
  IElementType TRUE = new JassIToken("true");
  IElementType TYPE = new JassIToken("type");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPR) {
        return new JassAndExprImpl(node);
      }
      else if (type == ARG) {
        return new JassArgImpl(node);
      }
      else if (type == ARG_LIST) {
        return new JassArgListImpl(node);
      }
      else if (type == ARRAY_ACCESS) {
        return new JassArrayAccessImpl(node);
      }
      else if (type == CALL_STMT) {
        return new JassCallStmtImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new JassDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new JassDivUnaryExprImpl(node);
      }
      else if (type == ELSE_IF_STMT) {
        return new JassElseIfStmtImpl(node);
      }
      else if (type == ELSE_STMT) {
        return new JassElseStmtImpl(node);
      }
      else if (type == EQ_EXPR) {
        return new JassEqExprImpl(node);
      }
      else if (type == EXIT_WHEN_STMT) {
        return new JassExitWhenStmtImpl(node);
      }
      else if (type == FUNC_AS_CODE) {
        return new JassFuncAsCodeImpl(node);
      }
      else if (type == FUNC_CALL) {
        return new JassFuncCallImpl(node);
      }
      else if (type == FUNC_CALL_NAME) {
        return new JassFuncCallNameImpl(node);
      }
      else if (type == FUNC_DEF) {
        return new JassFuncDefImpl(node);
      }
      else if (type == FUNC_DEF_NAME) {
        return new JassFuncDefNameImpl(node);
      }
      else if (type == FUNC_RETURNS) {
        return new JassFuncReturnsImpl(node);
      }
      else if (type == FUNC_TAKES) {
        return new JassFuncTakesImpl(node);
      }
      else if (type == GLOBALS_DEF) {
        return new JassGlobalsDefImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new JassGtEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new JassGtExprImpl(node);
      }
      else if (type == GVAR_DEF) {
        return new JassGvarDefImpl(node);
      }
      else if (type == GVAR_NAME) {
        return new JassGvarNameImpl(node);
      }
      else if (type == IF_STMT) {
        return new JassIfStmtImpl(node);
      }
      else if (type == LOCAL_VAR_STMT) {
        return new JassLocalVarStmtImpl(node);
      }
      else if (type == LOOP_STMT) {
        return new JassLoopStmtImpl(node);
      }
      else if (type == LT_EQ_EXPR) {
        return new JassLtEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new JassLtExprImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new JassMinusExprImpl(node);
      }
      else if (type == MINUS_UNARY_EXPR) {
        return new JassMinusUnaryExprImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new JassMulExprImpl(node);
      }
      else if (type == MUL_UNARY_EXPR) {
        return new JassMulUnaryExprImpl(node);
      }
      else if (type == NATIVE_DEF) {
        return new JassNativeDefImpl(node);
      }
      else if (type == NEQ_EXPR) {
        return new JassNeqExprImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new JassNotExprImpl(node);
      }
      else if (type == OR_EXPR) {
        return new JassOrExprImpl(node);
      }
      else if (type == PAREN_EXPR) {
        return new JassParenExprImpl(node);
      }
      else if (type == PLUS_EXPR) {
        return new JassPlusExprImpl(node);
      }
      else if (type == PLUS_UNARY_EXPR) {
        return new JassPlusUnaryExprImpl(node);
      }
      else if (type == PRIMARY_EXPR) {
        return new JassPrimaryExprImpl(node);
      }
      else if (type == RETURN_STMT) {
        return new JassReturnStmtImpl(node);
      }
      else if (type == SET_STMT) {
        return new JassSetStmtImpl(node);
      }
      else if (type == STMT) {
        return new JassStmtImpl(node);
      }
      else if (type == TYPED_VAR) {
        return new JassTypedVarImpl(node);
      }
      else if (type == TYPED_VAR_LIST) {
        return new JassTypedVarListImpl(node);
      }
      else if (type == TYPE_DEF) {
        return new JassTypeDefImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new JassTypeNameImpl(node);
      }
      else if (type == TYPE_NAME_BASE) {
        return new JassTypeNameBaseImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
