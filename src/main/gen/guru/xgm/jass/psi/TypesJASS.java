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
  IElementType ARGUMENT = new IElementTypeJASS_Element("ARGUMENT");
  IElementType ARRAY_LITERAL = new IElementTypeJASS_Element("ARRAY_LITERAL");
  IElementType CALL_STATEMENT = new IElementTypeJASS_Element("CALL_STATEMENT");
  IElementType DIV_EXPR = new IElementTypeJASS_Element("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new IElementTypeJASS_Element("DIV_UNARY_EXPR");
  IElementType ELSE_IF_STATEMENT = new IElementTypeJASS_Element("ELSE_IF_STATEMENT");
  IElementType ELSE_STATEMENT = new IElementTypeJASS_Element("ELSE_STATEMENT");
  IElementType EQUAL_EXPR = new IElementTypeJASS_Element("EQUAL_EXPR");
  IElementType EXIT_WHEN_STATEMENT = new IElementTypeJASS_Element("EXIT_WHEN_STATEMENT");
  IElementType EXPRESSION = new IElementTypeJASS_Element("EXPRESSION");
  IElementType FUNCTION_CALL_LITERAL = new IElementTypeJASS_Element("FUNCTION_CALL_LITERAL");
  IElementType FUNCTION_DECLARATION = new IElementTypeJASS_Element("FUNCTION_DECLARATION");
  IElementType FUNCTION_HEAD = new IElementTypeJASS_Element("FUNCTION_HEAD");
  IElementType FUNCTION_SEND_LITERAL = new IElementTypeJASS_Element("FUNCTION_SEND_LITERAL");
  IElementType GLOBALS_DECLARATION = new IElementTypeJASS_Element("GLOBALS_DECLARATION");
  IElementType GLOBAL_VAR_DECLARATION = new IElementTypeJASS_Element("GLOBAL_VAR_DECLARATION");
  IElementType GREATER_THAN_EQUALS_EXPR = new IElementTypeJASS_Element("GREATER_THAN_EQUALS_EXPR");
  IElementType GREATER_THAN_EXPR = new IElementTypeJASS_Element("GREATER_THAN_EXPR");
  IElementType IF_STATEMENT = new IElementTypeJASS_Element("IF_STATEMENT");
  IElementType LESS_THAN_EQUALS_EXPR = new IElementTypeJASS_Element("LESS_THAN_EQUALS_EXPR");
  IElementType LESS_THAN_EXPR = new IElementTypeJASS_Element("LESS_THAN_EXPR");
  IElementType LOCAL_VAR_STATEMENT = new IElementTypeJASS_Element("LOCAL_VAR_STATEMENT");
  IElementType LOOP_STATEMENT = new IElementTypeJASS_Element("LOOP_STATEMENT");
  IElementType MINUS_EXPR = new IElementTypeJASS_Element("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new IElementTypeJASS_Element("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new IElementTypeJASS_Element("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new IElementTypeJASS_Element("MUL_UNARY_EXPR");
  IElementType NATIVE_DECLARATION = new IElementTypeJASS_Element("NATIVE_DECLARATION");
  IElementType NOT_EQUALS_EXPR = new IElementTypeJASS_Element("NOT_EQUALS_EXPR");
  IElementType NOT_EXPR = new IElementTypeJASS_Element("NOT_EXPR");
  IElementType OR_EXPR = new IElementTypeJASS_Element("OR_EXPR");
  IElementType PARAM_LIST = new IElementTypeJASS_Element("PARAM_LIST");
  IElementType PAREN_EXPR = new IElementTypeJASS_Element("PAREN_EXPR");
  IElementType PLUS_EXPR = new IElementTypeJASS_Element("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new IElementTypeJASS_Element("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new IElementTypeJASS_Element("PRIMARY_EXPR");
  IElementType RETURN_STATEMENT = new IElementTypeJASS_Element("RETURN_STATEMENT");
  IElementType SET_STATEMENT = new IElementTypeJASS_Element("SET_STATEMENT");
  IElementType STATEMENT = new IElementTypeJASS_Element("STATEMENT");
  IElementType TYPED_VARIABLE = new IElementTypeJASS_Element("TYPED_VARIABLE");
  IElementType TYPE_DECLARATION = new IElementTypeJASS_Element("TYPE_DECLARATION");

  IElementType AND = new IElementTypeJASS_Token("and");
  IElementType ARRAY = new IElementTypeJASS_Token("array");
  IElementType CALL = new IElementTypeJASS_Token("call");
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
  IElementType HEX = new IElementTypeJASS_Token("HEX");
  IElementType ID = new IElementTypeJASS_Token("ID");
  IElementType IF = new IElementTypeJASS_Token("if");
  IElementType INTEGER = new IElementTypeJASS_Token("INTEGER");
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
  IElementType RAWCODE = new IElementTypeJASS_Token("RAWCODE");
  IElementType RB = new IElementTypeJASS_Token("]");
  IElementType REAL = new IElementTypeJASS_Token("REAL");
  IElementType RETURN = new IElementTypeJASS_Token("return");
  IElementType RETURNS = new IElementTypeJASS_Token("returns");
  IElementType RP = new IElementTypeJASS_Token(")");
  IElementType SET = new IElementTypeJASS_Token("set");
  IElementType SINGLE_LINE_COMMENT = new IElementTypeJASS_Token("SINGLE_LINE_COMMENT");
  IElementType STRING = new IElementTypeJASS_Token("STRING");
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
      else if (type == ARGUMENT) {
        return new JASSArgumentImpl(node);
      }
      else if (type == ARRAY_LITERAL) {
        return new JASSArrayLiteralImpl(node);
      }
      else if (type == CALL_STATEMENT) {
        return new JASSCallStatementImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new JASSDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new JASSDivUnaryExprImpl(node);
      }
      else if (type == ELSE_IF_STATEMENT) {
        return new JASSElseIfStatementImpl(node);
      }
      else if (type == ELSE_STATEMENT) {
        return new JASSElseStatementImpl(node);
      }
      else if (type == EQUAL_EXPR) {
        return new JASSEqualExprImpl(node);
      }
      else if (type == EXIT_WHEN_STATEMENT) {
        return new JASSExitWhenStatementImpl(node);
      }
      else if (type == FUNCTION_CALL_LITERAL) {
        return new JASSFunctionCallLiteralImpl(node);
      }
      else if (type == FUNCTION_DECLARATION) {
        return new JASSFunctionDeclarationImpl(node);
      }
      else if (type == FUNCTION_HEAD) {
        return new JASSFunctionHeadImpl(node);
      }
      else if (type == FUNCTION_SEND_LITERAL) {
        return new JASSFunctionSendLiteralImpl(node);
      }
      else if (type == GLOBALS_DECLARATION) {
        return new JASSGlobalsDeclarationImpl(node);
      }
      else if (type == GLOBAL_VAR_DECLARATION) {
        return new JASSGlobalVarDeclarationImpl(node);
      }
      else if (type == GREATER_THAN_EQUALS_EXPR) {
        return new JASSGreaterThanEqualsExprImpl(node);
      }
      else if (type == GREATER_THAN_EXPR) {
        return new JASSGreaterThanExprImpl(node);
      }
      else if (type == IF_STATEMENT) {
        return new JASSIfStatementImpl(node);
      }
      else if (type == LESS_THAN_EQUALS_EXPR) {
        return new JASSLessThanEqualsExprImpl(node);
      }
      else if (type == LESS_THAN_EXPR) {
        return new JASSLessThanExprImpl(node);
      }
      else if (type == LOCAL_VAR_STATEMENT) {
        return new JASSLocalVarStatementImpl(node);
      }
      else if (type == LOOP_STATEMENT) {
        return new JASSLoopStatementImpl(node);
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
      else if (type == NATIVE_DECLARATION) {
        return new JASSNativeDeclarationImpl(node);
      }
      else if (type == NOT_EQUALS_EXPR) {
        return new JASSNotEqualsExprImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new JASSNotExprImpl(node);
      }
      else if (type == OR_EXPR) {
        return new JASSOrExprImpl(node);
      }
      else if (type == PARAM_LIST) {
        return new JASSParamListImpl(node);
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
      else if (type == RETURN_STATEMENT) {
        return new JASSReturnStatementImpl(node);
      }
      else if (type == SET_STATEMENT) {
        return new JASSSetStatementImpl(node);
      }
      else if (type == STATEMENT) {
        return new JASSStatementImpl(node);
      }
      else if (type == TYPED_VARIABLE) {
        return new JASSTypedVariableImpl(node);
      }
      else if (type == TYPE_DECLARATION) {
        return new JASSTypeDeclarationImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
