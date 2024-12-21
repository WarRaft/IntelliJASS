// This is a generated file. Not intended for manual editing.
package raft.war.language.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import raft.war.language.jass.psi.funName.JassFunNameStubElementType;
import raft.war.language.jass.psi.typeName.JassTypeNameStubElementType;
import raft.war.language.jass.psi.varName.JassVarNameStubElementType;
import raft.war.language.jass.psi.impl.*;

public interface JassTypes {

  IElementType AND_EXPR = new JassElementType("AND_EXPR");
  IElementType ARG_LIST = new JassElementType("ARG_LIST");
  IElementType ARRAY_ACCESS = new JassElementType("ARRAY_ACCESS");
  IElementType CALL_STMT = new JassElementType("CALL_STMT");
  IElementType DIV_EXPR = new JassElementType("DIV_EXPR");
  IElementType DIV_UN_EXPR = new JassElementType("DIV_UN_EXPR");
  IElementType ELSE_IF_STMT = new JassElementType("ELSE_IF_STMT");
  IElementType ELSE_STMT = new JassElementType("ELSE_STMT");
  IElementType EQ_EXPR = new JassElementType("EQ_EXPR");
  IElementType EXIT_WHEN_STMT = new JassElementType("EXIT_WHEN_STMT");
  IElementType EXPR = new JassElementType("EXPR");
  IElementType FUN = new JassElementType("FUN");
  IElementType FUN_BODY = new JassElementType("FUN_BODY");
  IElementType FUN_CALL = new JassElementType("FUN_CALL");
  IElementType FUN_HEAD = new JassElementType("FUN_HEAD");
  IElementType FUN_NAME = new JassFunNameStubElementType("FUN_NAME");
  IElementType FUN_REF = new JassElementType("FUN_REF");
  IElementType FUN_RET = new JassElementType("FUN_RET");
  IElementType FUN_TAKE = new JassElementType("FUN_TAKE");
  IElementType GLOB = new JassElementType("GLOB");
  IElementType GT_EQ_EXPR = new JassElementType("GT_EQ_EXPR");
  IElementType GT_EXPR = new JassElementType("GT_EXPR");
  IElementType GVAR = new JassElementType("GVAR");
  IElementType IF_STMT = new JassElementType("IF_STMT");
  IElementType LOOP_STMT = new JassElementType("LOOP_STMT");
  IElementType LT_EQ_EXPR = new JassElementType("LT_EQ_EXPR");
  IElementType LT_EXPR = new JassElementType("LT_EXPR");
  IElementType LVAR_STMT = new JassElementType("LVAR_STMT");
  IElementType MINUS_EXPR = new JassElementType("MINUS_EXPR");
  IElementType MINUS_UN_EXPR = new JassElementType("MINUS_UN_EXPR");
  IElementType MUL_EXPR = new JassElementType("MUL_EXPR");
  IElementType MUL_UN_EXPR = new JassElementType("MUL_UN_EXPR");
  IElementType NATIV = new JassElementType("NATIV");
  IElementType NEQ_EXPR = new JassElementType("NEQ_EXPR");
  IElementType NOT_EXPR = new JassElementType("NOT_EXPR");
  IElementType NUM = new JassElementType("NUM");
  IElementType OR_EXPR = new JassElementType("OR_EXPR");
  IElementType PARAM = new JassElementType("PARAM");
  IElementType PARAM_LIST = new JassElementType("PARAM_LIST");
  IElementType PAREN_EXPR = new JassElementType("PAREN_EXPR");
  IElementType PLUS_EXPR = new JassElementType("PLUS_EXPR");
  IElementType PLUS_UN_EXPR = new JassElementType("PLUS_UN_EXPR");
  IElementType PRIM_EXPR = new JassElementType("PRIM_EXPR");
  IElementType RETURN_STMT = new JassElementType("RETURN_STMT");
  IElementType SET_STMT = new JassElementType("SET_STMT");
  IElementType STMT = new JassElementType("STMT");
  IElementType STR = new JassElementType("STR");
  IElementType TYPE_DEF = new JassElementType("TYPE_DEF");
  IElementType TYPE_EXTENDS = new JassElementType("TYPE_EXTENDS");
  IElementType TYPE_NAME = new JassTypeNameStubElementType("TYPE_NAME");
  IElementType VAR_DEF = new JassElementType("VAR_DEF");
  IElementType VAR_NAME = new JassVarNameStubElementType("VAR_NAME");

  IElementType AND = new JassTokenType("and");
  IElementType ARRAY = new JassTokenType("array");
  IElementType CALL = new JassTokenType("call");
  IElementType COMMA = new JassTokenType(",");
  IElementType CONSTANT = new JassTokenType("constant");
  IElementType DEBUG = new JassTokenType("debug");
  IElementType DIV = new JassTokenType("/");
  IElementType ELSE = new JassTokenType("else");
  IElementType ELSEIF = new JassTokenType("elseif");
  IElementType ENDFUNCTION = new JassTokenType("endfunction");
  IElementType ENDGLOBALS = new JassTokenType("endglobals");
  IElementType ENDIF = new JassTokenType("endif");
  IElementType ENDLOOP = new JassTokenType("endloop");
  IElementType EQ = new JassTokenType("=");
  IElementType EQ_EQ = new JassTokenType("==");
  IElementType EXITWHEN = new JassTokenType("exitwhen");
  IElementType EXTENDS = new JassTokenType("extends");
  IElementType FALSE = new JassTokenType("false");
  IElementType FUNCTION = new JassTokenType("function");
  IElementType GLOBALS = new JassTokenType("globals");
  IElementType GT = new JassTokenType(">");
  IElementType GT_EQ = new JassTokenType(">=");
  IElementType HEXVAL = new JassTokenType("HEXVAL");
  IElementType ID = new JassTokenType("ID");
  IElementType IF = new JassTokenType("if");
  IElementType INTVAL = new JassTokenType("INTVAL");
  IElementType LBRACK = new JassTokenType("[");
  IElementType LINE_COMMENT = new JassTokenType("LINE_COMMENT");
  IElementType LOCAL = new JassTokenType("local");
  IElementType LOOP = new JassTokenType("loop");
  IElementType LPAREN = new JassTokenType("(");
  IElementType LT = new JassTokenType("<");
  IElementType LT_EQ = new JassTokenType("<=");
  IElementType MINUS = new JassTokenType("-");
  IElementType MUL = new JassTokenType("*");
  IElementType NATIVE = new JassTokenType("native");
  IElementType NEQ = new JassTokenType("!=");
  IElementType NOT = new JassTokenType("not");
  IElementType NOTHING = new JassTokenType("nothing");
  IElementType NULL = new JassTokenType("null");
  IElementType OR = new JassTokenType("or");
  IElementType PLUS = new JassTokenType("+");
  IElementType RAWVAL = new JassTokenType("RAWVAL");
  IElementType RBRACK = new JassTokenType("]");
  IElementType REALVAL = new JassTokenType("REALVAL");
  IElementType RETURN = new JassTokenType("return");
  IElementType RETURNS = new JassTokenType("returns");
  IElementType RPAREN = new JassTokenType(")");
  IElementType SET = new JassTokenType("set");
  IElementType STRVAL = new JassTokenType("STRVAL");
  IElementType TAKES = new JassTokenType("takes");
  IElementType THEN = new JassTokenType("then");
  IElementType TRUE = new JassTokenType("true");
  IElementType TYPE = new JassTokenType("type");

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
      else if (type == FUN_BODY) {
        return new JassFunBodyImpl(node);
      }
      else if (type == FUN_CALL) {
        return new JassFunCallImpl(node);
      }
      else if (type == FUN_HEAD) {
        return new JassFunHeadImpl(node);
      }
      else if (type == FUN_NAME) {
        return new JassFunNameImpl(node);
      }
      else if (type == FUN_REF) {
        return new JassFunRefImpl(node);
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
      else if (type == NUM) {
        return new JassNumImpl(node);
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
      else if (type == STR) {
        return new JassStrImpl(node);
      }
      else if (type == TYPE_DEF) {
        return new JassTypeDefImpl(node);
      }
      else if (type == TYPE_EXTENDS) {
        return new JassTypeExtendsImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new JassTypeNameImpl(node);
      }
      else if (type == VAR_DEF) {
        return new JassVarDefImpl(node);
      }
      else if (type == VAR_NAME) {
        return new JassVarNameImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
