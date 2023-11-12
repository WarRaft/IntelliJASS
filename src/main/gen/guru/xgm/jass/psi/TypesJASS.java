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
  IElementType ARRAY_LITERAL = new IElementTypeJASS_Element("ARRAY_LITERAL");
  IElementType DIV_EXPR = new IElementTypeJASS_Element("DIV_EXPR");
  IElementType DIV_UNARY_EXPR = new IElementTypeJASS_Element("DIV_UNARY_EXPR");
  IElementType EQUAL_EXPR = new IElementTypeJASS_Element("EQUAL_EXPR");
  IElementType EXPRESSION = new IElementTypeJASS_Element("EXPRESSION");
  IElementType FUNCTION_LITERAL = new IElementTypeJASS_Element("FUNCTION_LITERAL");
  IElementType GREATER_THAN_EQUALS_EXPR = new IElementTypeJASS_Element("GREATER_THAN_EQUALS_EXPR");
  IElementType GREATER_THAN_EXPR = new IElementTypeJASS_Element("GREATER_THAN_EXPR");
  IElementType LESS_THAN_EQUALS_EXPR = new IElementTypeJASS_Element("LESS_THAN_EQUALS_EXPR");
  IElementType LESS_THAN_EXPR = new IElementTypeJASS_Element("LESS_THAN_EXPR");
  IElementType MINUS_EXPR = new IElementTypeJASS_Element("MINUS_EXPR");
  IElementType MINUS_UNARY_EXPR = new IElementTypeJASS_Element("MINUS_UNARY_EXPR");
  IElementType MUL_EXPR = new IElementTypeJASS_Element("MUL_EXPR");
  IElementType MUL_UNARY_EXPR = new IElementTypeJASS_Element("MUL_UNARY_EXPR");
  IElementType NOT_EQUALS_EXPR = new IElementTypeJASS_Element("NOT_EQUALS_EXPR");
  IElementType NOT_EXPR = new IElementTypeJASS_Element("NOT_EXPR");
  IElementType OR_EXPR = new IElementTypeJASS_Element("OR_EXPR");
  IElementType PLUS_EXPR = new IElementTypeJASS_Element("PLUS_EXPR");
  IElementType PLUS_UNARY_EXPR = new IElementTypeJASS_Element("PLUS_UNARY_EXPR");
  IElementType PRIMARY_EXPR = new IElementTypeJASS_Element("PRIMARY_EXPR");
  IElementType PROPERTY = new IElementTypeJASS_Element("PROPERTY");

  IElementType AND = new IElementTypeJASS_Token("and");
  IElementType ARRAY = new IElementTypeJASS_Token("array");
  IElementType COMMA = new IElementTypeJASS_Token(",");
  IElementType CONSTANT = new IElementTypeJASS_Token("constant");
  IElementType DIV = new IElementTypeJASS_Token("/");
  IElementType ENDFUNCTION = new IElementTypeJASS_Token("endfunction");
  IElementType ENDGLOBALS = new IElementTypeJASS_Token("endglobals");
  IElementType EQ = new IElementTypeJASS_Token("=");
  IElementType EXTENDS = new IElementTypeJASS_Token("extends");
  IElementType FUNCTION = new IElementTypeJASS_Token("function");
  IElementType GLOBALS = new IElementTypeJASS_Token("globals");
  IElementType GT = new IElementTypeJASS_Token(">");
  IElementType GTEQ = new IElementTypeJASS_Token(">=");
  IElementType HEX = new IElementTypeJASS_Token("HEX");
  IElementType ID = new IElementTypeJASS_Token("ID");
  IElementType INTEGER = new IElementTypeJASS_Token("INTEGER");
  IElementType LB = new IElementTypeJASS_Token("[");
  IElementType LP = new IElementTypeJASS_Token("(");
  IElementType LT = new IElementTypeJASS_Token("<");
  IElementType LTEQ = new IElementTypeJASS_Token("<=");
  IElementType MINUS = new IElementTypeJASS_Token("-");
  IElementType MUL = new IElementTypeJASS_Token("*");
  IElementType NATIVE = new IElementTypeJASS_Token("native");
  IElementType NEQ = new IElementTypeJASS_Token("!=");
  IElementType NOT = new IElementTypeJASS_Token("not");
  IElementType NOTHING = new IElementTypeJASS_Token("nothing");
  IElementType OR = new IElementTypeJASS_Token("or");
  IElementType PLUS = new IElementTypeJASS_Token("+");
  IElementType RAWCODE = new IElementTypeJASS_Token("RAWCODE");
  IElementType RB = new IElementTypeJASS_Token("]");
  IElementType REAL = new IElementTypeJASS_Token("REAL");
  IElementType RETURNS = new IElementTypeJASS_Token("returns");
  IElementType RP = new IElementTypeJASS_Token(")");
  IElementType SET = new IElementTypeJASS_Token("set");
  IElementType SINGLE_LINE_COMMENT = new IElementTypeJASS_Token("SINGLE_LINE_COMMENT");
  IElementType STRING = new IElementTypeJASS_Token("STRING");
  IElementType TAKES = new IElementTypeJASS_Token("takes");
  IElementType TYPE = new IElementTypeJASS_Token("type");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPR) {
        return new JASSAndExprImpl(node);
      }
      else if (type == ARRAY_LITERAL) {
        return new JASSArrayLiteralImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new JASSDivExprImpl(node);
      }
      else if (type == DIV_UNARY_EXPR) {
        return new JASSDivUnaryExprImpl(node);
      }
      else if (type == EQUAL_EXPR) {
        return new JASSEqualExprImpl(node);
      }
      else if (type == FUNCTION_LITERAL) {
        return new JASSFunctionLiteralImpl(node);
      }
      else if (type == GREATER_THAN_EQUALS_EXPR) {
        return new JASSGreaterThanEqualsExprImpl(node);
      }
      else if (type == GREATER_THAN_EXPR) {
        return new JASSGreaterThanExprImpl(node);
      }
      else if (type == LESS_THAN_EQUALS_EXPR) {
        return new JASSLessThanEqualsExprImpl(node);
      }
      else if (type == LESS_THAN_EXPR) {
        return new JASSLessThanExprImpl(node);
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
      else if (type == NOT_EQUALS_EXPR) {
        return new JASSNotEqualsExprImpl(node);
      }
      else if (type == NOT_EXPR) {
        return new JASSNotExprImpl(node);
      }
      else if (type == OR_EXPR) {
        return new JASSOrExprImpl(node);
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
      else if (type == PROPERTY) {
        return new JASSPropertyImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
