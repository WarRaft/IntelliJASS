// This is a generated file. Not intended for manual editing.
package guru.xgm.language.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.language.jass.psi.tree.JassIElement;
import guru.xgm.language.jass.psi.tree.JassIToken;
import guru.xgm.language.jass.psi.impl.*;

public interface JassTypes {

  IElementType AND_EXPR = new JassIElement("AND_EXPR");
  IElementType ARG_LIST = new JassIElement("ARG_LIST");
  IElementType ARRAY_ACCESS = new JassIElement("ARRAY_ACCESS");
  IElementType CALL_STMT = new JassIElement("CALL_STMT");
  IElementType DIV_EXPR = new JassIElement("DIV_EXPR");
  IElementType DIV_UN_EXPR = new JassIElement("DIV_UN_EXPR");
  IElementType ELSE_IF_STMT = new JassIElement("ELSE_IF_STMT");
  IElementType ELSE_STMT = new JassIElement("ELSE_STMT");
  IElementType EQ_EXPR = new JassIElement("EQ_EXPR");
  IElementType EXIT_WHEN_STMT = new JassIElement("EXIT_WHEN_STMT");
  IElementType EXPR = new JassIElement("EXPR");
  IElementType FUN = new JassIElement("FUN");
  IElementType FUNC_AS_CODE = new JassIElement("FUNC_AS_CODE");
  IElementType FUN_CALL = new JassIElement("FUN_CALL");
  IElementType FUN_RET = new JassIElement("FUN_RET");
  IElementType FUN_TAKE = new JassIElement("FUN_TAKE");
  IElementType GLOB = new JassIElement("GLOB");
  IElementType GT_EQ_EXPR = new JassIElement("GT_EQ_EXPR");
  IElementType GT_EXPR = new JassIElement("GT_EXPR");
  IElementType GVAR = new JassIElement("GVAR");
  IElementType IF_STMT = new JassIElement("IF_STMT");
  IElementType LOOP_STMT = new JassIElement("LOOP_STMT");
  IElementType LT_EQ_EXPR = new JassIElement("LT_EQ_EXPR");
  IElementType LT_EXPR = new JassIElement("LT_EXPR");
  IElementType LVAR_STMT = new JassIElement("LVAR_STMT");
  IElementType MINUS_EXPR = new JassIElement("MINUS_EXPR");
  IElementType MINUS_UN_EXPR = new JassIElement("MINUS_UN_EXPR");
  IElementType MUL_EXPR = new JassIElement("MUL_EXPR");
  IElementType MUL_UN_EXPR = new JassIElement("MUL_UN_EXPR");
  IElementType NATIV = new JassIElement("NATIV");
  IElementType NEQ_EXPR = new JassIElement("NEQ_EXPR");
  IElementType NOT_EXPR = new JassIElement("NOT_EXPR");
  IElementType OR_EXPR = new JassIElement("OR_EXPR");
  IElementType PARAM = new JassIElement("PARAM");
  IElementType PARAM_LIST = new JassIElement("PARAM_LIST");
  IElementType PAREN_EXPR = new JassIElement("PAREN_EXPR");
  IElementType PLUS_EXPR = new JassIElement("PLUS_EXPR");
  IElementType PLUS_UN_EXPR = new JassIElement("PLUS_UN_EXPR");
  IElementType PRIM_EXPR = new JassIElement("PRIM_EXPR");
  IElementType RETURN_STMT = new JassIElement("RETURN_STMT");
  IElementType SET_STMT = new JassIElement("SET_STMT");
  IElementType STMT = new JassIElement("STMT");
  IElementType TYPE_DEF = new JassIElement("TYPE_DEF");
  IElementType TYPE_NAME = new JassIElement("TYPE_NAME");
  IElementType TYPE_NAME_BASE = new JassIElement("TYPE_NAME_BASE");
  IElementType VAR = new JassIElement("VAR");

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
  IElementType LINE_COMMENT = new JassIToken("LINE_COMMENT");
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
      else if (type == DIV_UN_EXPR) {
        return new JassDivUnExprImpl(node);
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
      else if (type == FUN) {
        return new JassFunImpl(node);
      }
      else if (type == FUNC_AS_CODE) {
        return new JassFuncAsCodeImpl(node);
      }
      else if (type == FUN_CALL) {
        return new JassFunCallImpl(node);
      }
      else if (type == FUN_RET) {
        return new JassFunRetImpl(node);
      }
      else if (type == FUN_TAKE) {
        return new JassFunTakeImpl(node);
      }
      else if (type == GLOB) {
        return new JassGlobImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new JassGtEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new JassGtExprImpl(node);
      }
      else if (type == GVAR) {
        return new JassGvarImpl(node);
      }
      else if (type == IF_STMT) {
        return new JassIfStmtImpl(node);
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
      else if (type == LVAR_STMT) {
        return new JassLvarStmtImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new JassMinusExprImpl(node);
      }
      else if (type == MINUS_UN_EXPR) {
        return new JassMinusUnExprImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new JassMulExprImpl(node);
      }
      else if (type == MUL_UN_EXPR) {
        return new JassMulUnExprImpl(node);
      }
      else if (type == NATIV) {
        return new JassNativImpl(node);
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
      else if (type == PARAM) {
        return new JassParamImpl(node);
      }
      else if (type == PARAM_LIST) {
        return new JassParamListImpl(node);
      }
      else if (type == PAREN_EXPR) {
        return new JassParenExprImpl(node);
      }
      else if (type == PLUS_EXPR) {
        return new JassPlusExprImpl(node);
      }
      else if (type == PLUS_UN_EXPR) {
        return new JassPlusUnExprImpl(node);
      }
      else if (type == PRIM_EXPR) {
        return new JassPrimExprImpl(node);
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
      else if (type == TYPE_DEF) {
        return new JassTypeDefImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new JassTypeNameImpl(node);
      }
      else if (type == TYPE_NAME_BASE) {
        return new JassTypeNameBaseImpl(node);
      }
      else if (type == VAR) {
        return new JassVarImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
