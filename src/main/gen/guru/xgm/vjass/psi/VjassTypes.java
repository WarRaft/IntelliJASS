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
  IElementType CALL_SET_ID = new VjassIElement("CALL_SET_ID");
  IElementType CALL_SET_STMT = new VjassIElement("CALL_SET_STMT");
  IElementType DIV_EXPR = new VjassIElement("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new VjassIElement("DIV_UNARY_EXPR");
  IElementType DOT_EXPR = new VjassIElement("DOT_EXPR");
  IElementType ELSE_IF_STMT = new VjassIElement("ELSE_IF_STMT");
  IElementType ELSE_STMT = new VjassIElement("ELSE_STMT");
  IElementType EQ_EXPR = new VjassIElement("EQ_EXPR");
  IElementType EXIT_WHEN_STMT = new VjassIElement("EXIT_WHEN_STMT");
  IElementType EXPR = new VjassIElement("EXPR");
  IElementType FUN = new VjassIElement("FUN");
  IElementType FUNC_AS_CODE = new VjassIElement("FUNC_AS_CODE");
  IElementType FUNC_CALL = new VjassIElement("FUNC_CALL");
  IElementType FUNC_CALL_NAME = new VjassIElement("FUNC_CALL_NAME");
  IElementType FUNC_DEF_NAME = new VjassIElement("FUNC_DEF_NAME");
  IElementType FUNC_RETURNS = new VjassIElement("FUNC_RETURNS");
  IElementType FUNC_TAKES = new VjassIElement("FUNC_TAKES");
  IElementType GLOB = new VjassIElement("GLOB");
  IElementType GT_EQ_EXPR = new VjassIElement("GT_EQ_EXPR");
  IElementType GT_EXPR = new VjassIElement("GT_EXPR");
  IElementType GVAR_DEF = new VjassIElement("GVAR_DEF");
  IElementType GVAR_NAME = new VjassIElement("GVAR_NAME");
  IElementType HOOK_DEF = new VjassIElement("HOOK_DEF");
  IElementType ID_DOT = new VjassIElement("ID_DOT");
  IElementType IF_STMT = new VjassIElement("IF_STMT");
  IElementType IMPLEMENT_DEF = new VjassIElement("IMPLEMENT_DEF");
  IElementType LIB = new VjassIElement("LIB");
  IElementType LIB_REQ = new VjassIElement("LIB_REQ");
  IElementType LIB_REQ_ITEM = new VjassIElement("LIB_REQ_ITEM");
  IElementType LOOP_STMT = new VjassIElement("LOOP_STMT");
  IElementType LT_EQ_EXPR = new VjassIElement("LT_EQ_EXPR");
  IElementType LT_EXPR = new VjassIElement("LT_EXPR");
  IElementType L_VAR_STMT = new VjassIElement("L_VAR_STMT");
  IElementType METHOD_DEF = new VjassIElement("METHOD_DEF");
  IElementType MINUS_EXPR = new VjassIElement("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new VjassIElement("MINUS_UNARY_EXPR");
  IElementType MODULE_DEF = new VjassIElement("MODULE_DEF");
  IElementType MUL_EXPR = new VjassIElement("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new VjassIElement("MUL_UNARY_EXPR");
  IElementType NATIVE_DEF = new VjassIElement("NATIVE_DEF");
  IElementType NEQ_EXPR = new VjassIElement("NEQ_EXPR");
  IElementType NOT_EXPR = new VjassIElement("NOT_EXPR");
  IElementType OR_EXPR = new VjassIElement("OR_EXPR");
  IElementType PAREN_EXPR = new VjassIElement("PAREN_EXPR");
  IElementType PLUS_EXPR = new VjassIElement("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new VjassIElement("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new VjassIElement("PRIMARY_EXPR");
  IElementType RETURN_STMT = new VjassIElement("RETURN_STMT");
  IElementType STMT = new VjassIElement("STMT");
  IElementType STRUCT_DEF = new VjassIElement("STRUCT_DEF");
  IElementType STRUCT_NAME = new VjassIElement("STRUCT_NAME");
  IElementType TYPED_VAR = new VjassIElement("TYPED_VAR");
  IElementType TYPED_VAR_LIST = new VjassIElement("TYPED_VAR_LIST");
  IElementType TYPE_DEF = new VjassIElement("TYPE_DEF");
  IElementType TYPE_NAME = new VjassIElement("TYPE_NAME");
  IElementType TYPE_NAME_BASE = new VjassIElement("TYPE_NAME_BASE");
  IElementType VIS = new VjassIElement("VIS");

  IElementType AND = new VjassIToken("and");
  IElementType ARRAY = new VjassIToken("array");
  IElementType BOOLEAN = new VjassIToken("boolean");
  IElementType CALL = new VjassIToken("call");
  IElementType CODE = new VjassIToken("code");
  IElementType COMMA = new VjassIToken(",");
  IElementType CONSTANT = new VjassIToken("constant");
  IElementType DEBUG = new VjassIToken("debug");
  IElementType DIV = new VjassIToken("/");
  IElementType DOT = new VjassIToken(".");
  IElementType ELSE = new VjassIToken("else");
  IElementType ELSEIF = new VjassIToken("elseif");
  IElementType ENDFUNCTION = new VjassIToken("endfunction");
  IElementType ENDGLOBALS = new VjassIToken("endglobals");
  IElementType ENDIF = new VjassIToken("endif");
  IElementType ENDLIBRARY = new VjassIToken("endlibrary");
  IElementType ENDLOOP = new VjassIToken("endloop");
  IElementType ENDMETHOD = new VjassIToken("endmethod");
  IElementType ENDMODULE = new VjassIToken("endmodule");
  IElementType ENDSTRUCT = new VjassIToken("endstruct");
  IElementType EQ = new VjassIToken("=");
  IElementType EQ_EQ = new VjassIToken("==");
  IElementType EXITWHEN = new VjassIToken("exitwhen");
  IElementType EXTENDS = new VjassIToken("extends");
  IElementType FALSE = new VjassIToken("false");
  IElementType FUNCTION = new VjassIToken("function");
  IElementType GLOBALS = new VjassIToken("globals");
  IElementType GT = new VjassIToken(">");
  IElementType GT_EQ = new VjassIToken(">=");
  IElementType HANDLE = new VjassIToken("handle");
  IElementType HEXVAL = new VjassIToken("HEXVAL");
  IElementType HOOK = new VjassIToken("hook");
  IElementType ID = new VjassIToken("ID");
  IElementType IF = new VjassIToken("if");
  IElementType IMPLEMENT = new VjassIToken("implement");
  IElementType INITIALIZER = new VjassIToken("initializer");
  IElementType INTEGER = new VjassIToken("integer");
  IElementType INTVAL = new VjassIToken("INTVAL");
  IElementType KEY = new VjassIToken("KEY");
  IElementType LBRACK = new VjassIToken("[");
  IElementType LIBRARY = new VjassIToken("library");
  IElementType LOCAL = new VjassIToken("local");
  IElementType LOOP = new VjassIToken("loop");
  IElementType LPAREN = new VjassIToken("(");
  IElementType LT = new VjassIToken("<");
  IElementType LT_EQ = new VjassIToken("<=");
  IElementType METHOD = new VjassIToken("method");
  IElementType MINUS = new VjassIToken("-");
  IElementType MODULE = new VjassIToken("module");
  IElementType MUL = new VjassIToken("*");
  IElementType MULTI_LINE_COMMENT = new VjassIToken("MULTI_LINE_COMMENT");
  IElementType NATIVE = new VjassIToken("native");
  IElementType NEEDS = new VjassIToken("needs");
  IElementType NEQ = new VjassIToken("!=");
  IElementType NOT = new VjassIToken("not");
  IElementType NOTHING = new VjassIToken("nothing");
  IElementType NULL = new VjassIToken("null");
  IElementType OPTIONAL = new VjassIToken("optional");
  IElementType OR = new VjassIToken("or");
  IElementType PLUS = new VjassIToken("+");
  IElementType PRIVATE = new VjassIToken("private");
  IElementType PUBLIC = new VjassIToken("public");
  IElementType RAWVAL = new VjassIToken("RAWVAL");
  IElementType RBRACK = new VjassIToken("]");
  IElementType REAL = new VjassIToken("real");
  IElementType REALVAL = new VjassIToken("REALVAL");
  IElementType REQUIRES = new VjassIToken("requires");
  IElementType RETURN = new VjassIToken("return");
  IElementType RETURNS = new VjassIToken("returns");
  IElementType RPAREN = new VjassIToken(")");
  IElementType SET = new VjassIToken("set");
  IElementType SINGLE_LINE_COMMENT = new VjassIToken("SINGLE_LINE_COMMENT");
  IElementType STATIC = new VjassIToken("static");
  IElementType STRING = new VjassIToken("string");
  IElementType STRUCT = new VjassIToken("struct");
  IElementType STRVAL = new VjassIToken("STRVAL");
  IElementType TAKES = new VjassIToken("takes");
  IElementType THEN = new VjassIToken("then");
  IElementType TRUE = new VjassIToken("true");
  IElementType TYPE = new VjassIToken("type");
  IElementType USES = new VjassIToken("uses");

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
      else if (type == CALL_SET_ID) {
        return new VjassCallSetIdImpl(node);
      }
      else if (type == CALL_SET_STMT) {
        return new VjassCallSetStmtImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new VjassDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new VjassDivUnaryExprImpl(node);
      }
      else if (type == DOT_EXPR) {
        return new VjassDotExprImpl(node);
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
      else if (type == FUN) {
        return new VjassFunImpl(node);
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
      else if (type == FUNC_DEF_NAME) {
        return new VjassFuncDefNameImpl(node);
      }
      else if (type == FUNC_RETURNS) {
        return new VjassFuncReturnsImpl(node);
      }
      else if (type == FUNC_TAKES) {
        return new VjassFuncTakesImpl(node);
      }
      else if (type == GLOB) {
        return new VjassGlobImpl(node);
      }
      else if (type == GT_EQ_EXPR) {
        return new VjassGtEqExprImpl(node);
      }
      else if (type == GT_EXPR) {
        return new VjassGtExprImpl(node);
      }
      else if (type == GVAR_DEF) {
        return new VjassGvarDefImpl(node);
      }
      else if (type == GVAR_NAME) {
        return new VjassGvarNameImpl(node);
      }
      else if (type == HOOK_DEF) {
        return new VjassHookDefImpl(node);
      }
      else if (type == ID_DOT) {
        return new VjassIdDotImpl(node);
      }
      else if (type == IF_STMT) {
        return new VjassIfStmtImpl(node);
      }
      else if (type == IMPLEMENT_DEF) {
        return new VjassImplementDefImpl(node);
      }
      else if (type == LIB) {
        return new VjassLibImpl(node);
      }
      else if (type == LIB_REQ) {
        return new VjassLibReqImpl(node);
      }
      else if (type == LIB_REQ_ITEM) {
        return new VjassLibReqItemImpl(node);
      }
      else if (type == LOOP_STMT) {
        return new VjassLoopStmtImpl(node);
      }
      else if (type == LT_EQ_EXPR) {
        return new VjassLtEqExprImpl(node);
      }
      else if (type == LT_EXPR) {
        return new VjassLtExprImpl(node);
      }
      else if (type == L_VAR_STMT) {
        return new VjassLVarStmtImpl(node);
      }
      else if (type == METHOD_DEF) {
        return new VjassMethodDefImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new VjassMinusExprImpl(node);
      }
      else if (type == MINUS_UNARY_EXPR) {
        return new VjassMinusUnaryExprImpl(node);
      }
      else if (type == MODULE_DEF) {
        return new VjassModuleDefImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new VjassMulExprImpl(node);
      }
      else if (type == MUL_UNARY_EXPR) {
        return new VjassMulUnaryExprImpl(node);
      }
      else if (type == NATIVE_DEF) {
        return new VjassNativeDefImpl(node);
      }
      else if (type == NEQ_EXPR) {
        return new VjassNeqExprImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new VjassNotExprImpl(node);
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
      else if (type == STMT) {
        return new VjassStmtImpl(node);
      }
      else if (type == STRUCT_DEF) {
        return new VjassStructDefImpl(node);
      }
      else if (type == STRUCT_NAME) {
        return new VjassStructNameImpl(node);
      }
      else if (type == TYPED_VAR) {
        return new VjassTypedVarImpl(node);
      }
      else if (type == TYPED_VAR_LIST) {
        return new VjassTypedVarListImpl(node);
      }
      else if (type == TYPE_DEF) {
        return new VjassTypeDefImpl(node);
      }
      else if (type == TYPE_NAME) {
        return new VjassTypeNameImpl(node);
      }
      else if (type == TYPE_NAME_BASE) {
        return new VjassTypeNameBaseImpl(node);
      }
      else if (type == VIS) {
        return new VjassVisImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
