// This is a generated file. Not intended for manual editing.
package guru.xgm.vjass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.vjass.psi.tree.VjassIElement;
import guru.xgm.vjass.psi.tree.VjassIToken;
import guru.xgm.vjass.psi.impl.*;

public interface VjassTypes {

  IElementType AND_EXPR = new VjassIElement("AND_EXPR");
  IElementType ARG = new VjassIElement("ARG");
  IElementType ARG_LIST = new VjassIElement("ARG_LIST");
  IElementType ARRAY_ACCESS = new VjassIElement("ARRAY_ACCESS");
  IElementType CALL_STMT = new VjassIElement("CALL_STMT");
  IElementType DIV_EXPR = new VjassIElement("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new VjassIElement("DIV_UNARY_EXPR");
  IElementType ELSE_IF_STMT = new VjassIElement("ELSE_IF_STMT");
  IElementType ELSE_STMT = new VjassIElement("ELSE_STMT");
  IElementType EQ_EXPR = new VjassIElement("EQ_EXPR");
  IElementType EXIT_WHEN_STMT = new VjassIElement("EXIT_WHEN_STMT");
  IElementType EXPR = new VjassIElement("EXPR");
  IElementType FUNC_AS_CODE = new VjassIElement("FUNC_AS_CODE");
  IElementType FUNC_CALL = new VjassIElement("FUNC_CALL");
  IElementType FUNC_CALL_NAME = new VjassIElement("FUNC_CALL_NAME");
  IElementType FUNC_DECL = new VjassIElement("FUNC_DECL");
  IElementType FUNC_DECL_NAME = new VjassIElement("FUNC_DECL_NAME");
  IElementType FUNC_RETURNS = new VjassIElement("FUNC_RETURNS");
  IElementType FUNC_TAKES = new VjassIElement("FUNC_TAKES");
  IElementType GLOBALS_DECL = new VjassIElement("GLOBALS_DECL");
  IElementType GT_EQ_EXPR = new VjassIElement("GT_EQ_EXPR");
  IElementType GT_EXPR = new VjassIElement("GT_EXPR");
  IElementType GVAR_DECL = new VjassIElement("GVAR_DECL");
  IElementType GVAR_NAME = new VjassIElement("GVAR_NAME");
  IElementType IF_STMT = new VjassIElement("IF_STMT");
  IElementType LOCAL_VAR_STMT = new VjassIElement("LOCAL_VAR_STMT");
  IElementType LOOP_STMT = new VjassIElement("LOOP_STMT");
  IElementType LT_EQ_EXPR = new VjassIElement("LT_EQ_EXPR");
  IElementType LT_EXPR = new VjassIElement("LT_EXPR");
  IElementType MINUS_EXPR = new VjassIElement("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new VjassIElement("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new VjassIElement("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new VjassIElement("MUL_UNARY_EXPR");
  IElementType NATIVE_DECL = new VjassIElement("NATIVE_DECL");
  IElementType NOT_EXPR = new VjassIElement("NOT_EXPR");
  IElementType N_EQ_EXPR = new VjassIElement("N_EQ_EXPR");
  IElementType OR_EXPR = new VjassIElement("OR_EXPR");
  IElementType PAREN_EXPR = new VjassIElement("PAREN_EXPR");
  IElementType PLUS_EXPR = new VjassIElement("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new VjassIElement("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new VjassIElement("PRIMARY_EXPR");
  IElementType RETURN_STMT = new VjassIElement("RETURN_STMT");
  IElementType SET_STMT = new VjassIElement("SET_STMT");
  IElementType STMT = new VjassIElement("STMT");
  IElementType TYPED_VAR = new VjassIElement("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new VjassIElement("TYPED_VAR_LIST");
  IElementType TYPE_DECL = new VjassIElement("TYPE_DECL");
  IElementType TYPE_NAME = new VjassIElement("TYPE_NAME");
  IElementType TYPE_NAME_BASE = new VjassIElement("TYPE_NAME_BASE");

  IElementType AND = new VjassIToken("and");
  IElementType ARRAY = new VjassIToken("array");
  IElementType BOOLEAN = new VjassIToken("boolean");
  IElementType CALL = new VjassIToken("call");
  IElementType CODE = new VjassIToken("code");
  IElementType COMMA = new VjassIToken(",");
  IElementType CONSTANT = new VjassIToken("constant");
  IElementType DEBUG = new VjassIToken("debug");
  IElementType DIV = new VjassIToken("/");
  IElementType ELSE = new VjassIToken("else");
  IElementType ELSEIF = new VjassIToken("elseif");
  IElementType ENDFUNCTION = new VjassIToken("endfunction");
  IElementType ENDGLOBALS = new VjassIToken("endglobals");
  IElementType ENDIF = new VjassIToken("endif");
  IElementType ENDLOOP = new VjassIToken("endloop");
  IElementType EQ = new VjassIToken("=");
  IElementType EQEQ = new VjassIToken("==");
  IElementType EXITWHEN = new VjassIToken("exitwhen");
  IElementType EXTENDS = new VjassIToken("extends");
  IElementType FALSE = new VjassIToken("false");
  IElementType FUNCTION = new VjassIToken("function");
  IElementType GLOBALS = new VjassIToken("globals");
  IElementType GT = new VjassIToken(">");
  IElementType GTEQ = new VjassIToken(">=");
  IElementType HANDLE = new VjassIToken("handle");
  IElementType HEXVAL = new VjassIToken("HEXVAL");
  IElementType ID = new VjassIToken("ID");
  IElementType IF = new VjassIToken("if");
  IElementType INTEGER = new VjassIToken("integer");
  IElementType INTVAL = new VjassIToken("INTVAL");
  IElementType LBRACK = new VjassIToken("[");
  IElementType LOCAL = new VjassIToken("local");
  IElementType LOOP = new VjassIToken("loop");
  IElementType LPAREN = new VjassIToken("(");
  IElementType LT = new VjassIToken("<");
  IElementType LTEQ = new VjassIToken("<=");
  IElementType MINUS = new VjassIToken("-");
  IElementType MUL = new VjassIToken("*");
  IElementType NATIVE = new VjassIToken("native");
  IElementType NEQ = new VjassIToken("!=");
  IElementType NOT = new VjassIToken("not");
  IElementType NOTHING = new VjassIToken("nothing");
  IElementType NULL = new VjassIToken("null");
  IElementType OR = new VjassIToken("or");
  IElementType PLUS = new VjassIToken("+");
  IElementType RAWVAL = new VjassIToken("RAWVAL");
  IElementType RBRACK = new VjassIToken("]");
  IElementType REAL = new VjassIToken("real");
  IElementType REALVAL = new VjassIToken("REALVAL");
  IElementType RETURN = new VjassIToken("return");
  IElementType RETURNS = new VjassIToken("returns");
  IElementType RPAREN = new VjassIToken(")");
  IElementType SET = new VjassIToken("set");
  IElementType SINGLE_LINE_COMMENT = new VjassIToken("SINGLE_LINE_COMMENT");
  IElementType STRING = new VjassIToken("string");
  IElementType STRVAL = new VjassIToken("STRVAL");
  IElementType TAKES = new VjassIToken("takes");
  IElementType THEN = new VjassIToken("then");
  IElementType TRUE = new VjassIToken("true");
  IElementType TYPE = new VjassIToken("type");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPR) {
        return new VjassAndExprImpl(node);
      }
      else if (type == ARG) {
        return new VjassArgImpl(node);
      }
      else if (type == ARG_LIST) {
        return new VjassArgListImpl(node);
      }
      else if (type == ARRAY_ACCESS) {
        return new VjassArrayAccessImpl(node);
      }
      else if (type == CALL_STMT) {
        return new VjassCallStmtImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new VjassDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new VjassDivUnaryExprImpl(node);
      }
      else if (type == ELSE_IF_STMT) {
        return new VjassElseIfStmtImpl(node);
      }
      else if (type == ELSE_STMT) {
        return new VjassElseStmtImpl(node);
      }
      else if (type == EQ_EXPR) {
        return new VjassEqExprImpl(node);
      }
      else if (type == EXIT_WHEN_STMT) {
        return new VjassExitWhenStmtImpl(node);
      }
      else if (type == FUNC_AS_CODE) {
        return new VjassFuncAsCodeImpl(node);
      }
      else if (type == FUNC_CALL) {
        return new VjassFuncCallImpl(node);
      }
      else if (type == FUNC_CALL_NAME) {
        return new VjassFuncCallNameImpl(node);
      }
      else if (type == FUNC_DECL) {
        return new VjassFuncDeclImpl(node);
      }
      else if (type == FUNC_DECL_NAME) {
        return new VjassFuncDeclNameImpl(node);
      }
      else if (type == FUNC_RETURNS) {
        return new VjassFuncReturnsImpl(node);
      }
      else if (type == FUNC_TAKES) {
        return new VjassFuncTakesImpl(node);
      }
      else if (type == GLOBALS_DECL) {
        return new VjassGlobalsDeclImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new VjassGTEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new VjassGTExprImpl(node);
      }
      else if (type == GVAR_DECL) {
        return new VjassGvarDeclImpl(node);
      }
      else if (type == GVAR_NAME) {
        return new VjassGvarNameImpl(node);
      }
      else if (type == IF_STMT) {
        return new VjassIfStmtImpl(node);
      }
      else if (type == LOCAL_VAR_STMT) {
        return new VjassLocalVarStmtImpl(node);
      }
      else if (type == LOOP_STMT) {
        return new VjassLoopStmtImpl(node);
      }
      else if (type == LT_EQ_EXPR) {
        return new VjassLTEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new VjassLTExprImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new VjassMinusExprImpl(node);
      }
      else if (type == MINUS_UNARY_EXPR) {
        return new VjassMinusUnaryExprImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new VjassMulExprImpl(node);
      }
      else if (type == MUL_UNARY_EXPR) {
        return new VjassMulUnaryExprImpl(node);
      }
      else if (type == NATIVE_DECL) {
        return new VjassNativeDeclImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new VjassNotExprImpl(node);
      }
      else if (type == N_EQ_EXPR) {
        return new VjassNEqExprImpl(node);
      }
      else if (type == OR_EXPR) {
        return new VjassOrExprImpl(node);
      }
      else if (type == PAREN_EXPR) {
        return new VjassParenExprImpl(node);
      }
      else if (type == PLUS_EXPR) {
        return new VjassPlusExprImpl(node);
      }
      else if (type == PLUS_UNARY_EXPR) {
        return new VjassPlusUnaryExprImpl(node);
      }
      else if (type == PRIMARY_EXPR) {
        return new VjassPrimaryExprImpl(node);
      }
      else if (type == RETURN_STMT) {
        return new VjassReturnStmtImpl(node);
      }
      else if (type == SET_STMT) {
        return new VjassSetStmtImpl(node);
      }
      else if (type == STMT) {
        return new VjassStmtImpl(node);
      }
      else if (type == TYPED_VAR) {
        return new VjassTypedVarImpl(node);
      }
      else if (type == TYPED_VAR_LIST) {
        return new VjassTypedVarListImpl(node);
      }
      else if (type == TYPE_DECL) {
        return new VjassTypeDeclImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new VjassTypeNameImpl(node);
      }
      else if (type == TYPE_NAME_BASE) {
        return new VjassTypeNameBaseImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
