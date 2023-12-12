// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.JassIElementType_Element;
import guru.xgm.jass.psi.tree.JassIElementType_Token;
import guru.xgm.jass.psi.impl.*;

public interface JassTypes {

  IElementType AND_EXPR = new JassIElementType_Element("AND_EXPR");
  IElementType ARG = new JassIElementType_Element("ARG");
  IElementType ARG_LIST = new JassIElementType_Element("ARG_LIST");
  IElementType ARRAY_ACCESS = new JassIElementType_Element("ARRAY_ACCESS");
  IElementType CALL_STMT = new JassIElementType_Element("CALL_STMT");
  IElementType DIV_EXPR = new JassIElementType_Element("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new JassIElementType_Element("DIV_UNARY_EXPR");
  IElementType ELSE_IF_STMT = new JassIElementType_Element("ELSE_IF_STMT");
  IElementType ELSE_STMT = new JassIElementType_Element("ELSE_STMT");
  IElementType EQ_EXPR = new JassIElementType_Element("EQ_EXPR");
  IElementType EXIT_WHEN_STMT = new JassIElementType_Element("EXIT_WHEN_STMT");
  IElementType EXPR = new JassIElementType_Element("EXPR");
  IElementType FUNC_AS_CODE = new JassIElementType_Element("FUNC_AS_CODE");
  IElementType FUNC_CALL = new JassIElementType_Element("FUNC_CALL");
  IElementType FUNC_CALL_NAME = new JassIElementType_Element("FUNC_CALL_NAME");
  IElementType FUNC_DECL = new JassIElementType_Element("FUNC_DECL");
  IElementType FUNC_DECL_NAME = new JassIElementType_Element("FUNC_DECL_NAME");
  IElementType FUNC_RETURNS = new JassIElementType_Element("FUNC_RETURNS");
  IElementType FUNC_TAKES = new JassIElementType_Element("FUNC_TAKES");
  IElementType GLOBALS_DECL = new JassIElementType_Element("GLOBALS_DECL");
  IElementType GLOBAL_VAR_DECL = new JassIElementType_Element("GLOBAL_VAR_DECL");
  IElementType GT_EQ_EXPR = new JassIElementType_Element("GT_EQ_EXPR");
  IElementType GT_EXPR = new JassIElementType_Element("GT_EXPR");
  IElementType IF_STMT = new JassIElementType_Element("IF_STMT");
  IElementType LOCAL_VAR_STMT = new JassIElementType_Element("LOCAL_VAR_STMT");
  IElementType LOOP_STMT = new JassIElementType_Element("LOOP_STMT");
  IElementType LT_EQ_EXPR = new JassIElementType_Element("LT_EQ_EXPR");
  IElementType LT_EXPR = new JassIElementType_Element("LT_EXPR");
  IElementType MINUS_EXPR = new JassIElementType_Element("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new JassIElementType_Element("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new JassIElementType_Element("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new JassIElementType_Element("MUL_UNARY_EXPR");
  IElementType NATIVE_DECL = new JassIElementType_Element("NATIVE_DECL");
  IElementType NOT_EXPR = new JassIElementType_Element("NOT_EXPR");
  IElementType N_EQ_EXPR = new JassIElementType_Element("N_EQ_EXPR");
  IElementType OR_EXPR = new JassIElementType_Element("OR_EXPR");
  IElementType PAREN_EXPR = new JassIElementType_Element("PAREN_EXPR");
  IElementType PLUS_EXPR = new JassIElementType_Element("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new JassIElementType_Element("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new JassIElementType_Element("PRIMARY_EXPR");
  IElementType RETURN_STMT = new JassIElementType_Element("RETURN_STMT");
  IElementType SET_STMT = new JassIElementType_Element("SET_STMT");
  IElementType STMT = new JassIElementType_Element("STMT");
  IElementType TYPED_VAR = new JassIElementType_Element("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new JassIElementType_Element("TYPED_VAR_LIST");
  IElementType TYPE_DECL = new JassIElementType_Element("TYPE_DECL");
  IElementType TYPE_NAME = new JassIElementType_Element("TYPE_NAME");

  IElementType AND = new JassIElementType_Token("and");
  IElementType ARRAY = new JassIElementType_Token("array");
  IElementType BOOLEAN = new JassIElementType_Token("boolean");
  IElementType CALL = new JassIElementType_Token("call");
  IElementType CODE = new JassIElementType_Token("code");
  IElementType COMMA = new JassIElementType_Token(",");
  IElementType CONSTANT = new JassIElementType_Token("constant");
  IElementType DEBUG = new JassIElementType_Token("debug");
  IElementType DIV = new JassIElementType_Token("/");
  IElementType ELSE = new JassIElementType_Token("else");
  IElementType ELSEIF = new JassIElementType_Token("elseif");
  IElementType ENDFUNCTION = new JassIElementType_Token("endfunction");
  IElementType ENDGLOBALS = new JassIElementType_Token("endglobals");
  IElementType ENDIF = new JassIElementType_Token("endif");
  IElementType ENDLOOP = new JassIElementType_Token("endloop");
  IElementType EQ = new JassIElementType_Token("=");
  IElementType EQEQ = new JassIElementType_Token("==");
  IElementType EXITWHEN = new JassIElementType_Token("exitwhen");
  IElementType EXTENDS = new JassIElementType_Token("extends");
  IElementType FALSE = new JassIElementType_Token("false");
  IElementType FUNCTION = new JassIElementType_Token("function");
  IElementType GLOBALS = new JassIElementType_Token("globals");
  IElementType GT = new JassIElementType_Token(">");
  IElementType GTEQ = new JassIElementType_Token(">=");
  IElementType HANDLE = new JassIElementType_Token("handle");
  IElementType HEXVAL = new JassIElementType_Token("HEXVAL");
  IElementType ID = new JassIElementType_Token("ID");
  IElementType IF = new JassIElementType_Token("if");
  IElementType INTEGER = new JassIElementType_Token("integer");
  IElementType INTVAL = new JassIElementType_Token("INTVAL");
  IElementType LB = new JassIElementType_Token("[");
  IElementType LOCAL = new JassIElementType_Token("local");
  IElementType LOOP = new JassIElementType_Token("loop");
  IElementType LP = new JassIElementType_Token("(");
  IElementType LT = new JassIElementType_Token("<");
  IElementType LTEQ = new JassIElementType_Token("<=");
  IElementType MINUS = new JassIElementType_Token("-");
  IElementType MUL = new JassIElementType_Token("*");
  IElementType NATIVE = new JassIElementType_Token("native");
  IElementType NEQ = new JassIElementType_Token("!=");
  IElementType NOT = new JassIElementType_Token("not");
  IElementType NOTHING = new JassIElementType_Token("nothing");
  IElementType NULL = new JassIElementType_Token("null");
  IElementType OR = new JassIElementType_Token("or");
  IElementType PLUS = new JassIElementType_Token("+");
  IElementType RAWVAL = new JassIElementType_Token("RAWVAL");
  IElementType RB = new JassIElementType_Token("]");
  IElementType REAL = new JassIElementType_Token("real");
  IElementType REALVAL = new JassIElementType_Token("REALVAL");
  IElementType RETURN = new JassIElementType_Token("return");
  IElementType RETURNS = new JassIElementType_Token("returns");
  IElementType RP = new JassIElementType_Token(")");
  IElementType SET = new JassIElementType_Token("set");
  IElementType SINGLE_LINE_COMMENT = new JassIElementType_Token("SINGLE_LINE_COMMENT");
  IElementType STRING = new JassIElementType_Token("string");
  IElementType STRVAL = new JassIElementType_Token("STRVAL");
  IElementType TAKES = new JassIElementType_Token("takes");
  IElementType THEN = new JassIElementType_Token("then");
  IElementType TRUE = new JassIElementType_Token("true");
  IElementType TYPE = new JassIElementType_Token("type");

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
      else if (type == FUNC_DECL) {
        return new JassFuncDeclImpl(node);
      }
      else if (type == FUNC_DECL_NAME) {
        return new JassFuncDeclNameImpl(node);
      }
      else if (type == FUNC_RETURNS) {
        return new JassFuncReturnsImpl(node);
      }
      else if (type == FUNC_TAKES) {
        return new JassFuncTakesImpl(node);
      }
      else if (type == GLOBALS_DECL) {
        return new JassGlobalsDeclImpl(node);
      }
      else if (type == GLOBAL_VAR_DECL) {
        return new JassGlobalVarDeclImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new JassGTEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new JassGTExprImpl(node);
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
        return new JassLTEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new JassLTExprImpl(node);
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
      else if (type == NATIVE_DECL) {
        return new JassNativeDeclImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new JassNotExprImpl(node);
      }
      else if (type == N_EQ_EXPR) {
        return new JassNEqExprImpl(node);
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
      else if (type == TYPE_DECL) {
        return new JassTypeDeclImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new JassTypeNameImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
