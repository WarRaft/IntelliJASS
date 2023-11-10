// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Element;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Token;
import guru.xgm.jass.psi.impl.*;

public interface TypesJASS {

  IElementType ARGUMENT_DELARATION = new IElementTypeJASS_Element("ARGUMENT_DELARATION");
  IElementType ARG_LIST = new IElementTypeJASS_Element("ARG_LIST");
  IElementType ASSIGN_EXPR = new IElementTypeJASS_Element("ASSIGN_EXPR");
  IElementType BETWEEN_EXPR = new IElementTypeJASS_Element("BETWEEN_EXPR");
  IElementType CALL_EXPR = new IElementTypeJASS_Element("CALL_EXPR");
  IElementType CONDITIONAL_EXPR = new IElementTypeJASS_Element("CONDITIONAL_EXPR");
  IElementType DIV_EXPR = new IElementTypeJASS_Element("DIV_EXPR");
  IElementType ELVIS_EXPR = new IElementTypeJASS_Element("ELVIS_EXPR");
  IElementType EXPR = new IElementTypeJASS_Element("EXPR");
  IElementType EXP_EXPR = new IElementTypeJASS_Element("EXP_EXPR");
  IElementType FACTORIAL_EXPR = new IElementTypeJASS_Element("FACTORIAL_EXPR");
  IElementType FUNCTION_NAME = new IElementTypeJASS_Element("FUNCTION_NAME");
  IElementType GLOBALS_DECLARATION = new IElementTypeJASS_Element("GLOBALS_DECLARATION");
  IElementType IS_NOT_EXPR = new IElementTypeJASS_Element("IS_NOT_EXPR");
  IElementType LITERAL_EXPR = new IElementTypeJASS_Element("LITERAL_EXPR");
  IElementType MINUS_EXPR = new IElementTypeJASS_Element("MINUS_EXPR");
  IElementType MUL_EXPR = new IElementTypeJASS_Element("MUL_EXPR");
  IElementType NATIVE_DECLARATION = new IElementTypeJASS_Element("NATIVE_DECLARATION");
  IElementType PAREN_EXPR = new IElementTypeJASS_Element("PAREN_EXPR");
  IElementType PLUS_EXPR = new IElementTypeJASS_Element("PLUS_EXPR");
  IElementType REF_EXPR = new IElementTypeJASS_Element("REF_EXPR");
  IElementType TYPE = new IElementTypeJASS_Element("TYPE");
  IElementType TYPE_DECLARATION = new IElementTypeJASS_Element("TYPE_DECLARATION");
  IElementType UNARY_MIN_EXPR = new IElementTypeJASS_Element("UNARY_MIN_EXPR");
  IElementType UNARY_NOT_EXPR = new IElementTypeJASS_Element("UNARY_NOT_EXPR");
  IElementType UNARY_PLUS_EXPR = new IElementTypeJASS_Element("UNARY_PLUS_EXPR");
  IElementType VARIABLE = new IElementTypeJASS_Element("VARIABLE");
  IElementType VARIABLE_DECLARATION = new IElementTypeJASS_Element("VARIABLE_DECLARATION");
  IElementType XOR_EXPR = new IElementTypeJASS_Element("XOR_EXPR");

  IElementType AND = new IElementTypeJASS_Token("and");
  IElementType ASSIGN = new IElementTypeJASS_Token("ASSIGN");
  IElementType BETWEEN = new IElementTypeJASS_Token("BETWEEN");
  IElementType COMMA = new IElementTypeJASS_Token("COMMA");
  IElementType DIV = new IElementTypeJASS_Token("DIV");
  IElementType EQUAL = new IElementTypeJASS_Token("==");
  IElementType IDENTIFIER = new IElementTypeJASS_Token("IDENTIFIER");
  IElementType INTEGER = new IElementTypeJASS_Token("INTEGER");
  IElementType IS = new IElementTypeJASS_Token("IS");
  IElementType KEYWORD_CONSTANT = new IElementTypeJASS_Token("KEYWORD_CONSTANT");
  IElementType KEYWORD_ENDGLOBALS = new IElementTypeJASS_Token("KEYWORD_ENDGLOBALS");
  IElementType KEYWORD_EXTENDS = new IElementTypeJASS_Token("KEYWORD_EXTENDS");
  IElementType KEYWORD_GLOBALS = new IElementTypeJASS_Token("KEYWORD_GLOBALS");
  IElementType KEYWORD_NATIVE = new IElementTypeJASS_Token("KEYWORD_NATIVE");
  IElementType KEYWORD_NOTHING = new IElementTypeJASS_Token("KEYWORD_NOTHING");
  IElementType KEYWORD_RETURNS = new IElementTypeJASS_Token("KEYWORD_RETURNS");
  IElementType KEYWORD_TAKES = new IElementTypeJASS_Token("KEYWORD_TAKES");
  IElementType KEYWORD_TYPE = new IElementTypeJASS_Token("KEYWORD_TYPE");
  IElementType LPAREN = new IElementTypeJASS_Token("LPAREN");
  IElementType MINUS = new IElementTypeJASS_Token("-");
  IElementType MUL = new IElementTypeJASS_Token("MUL");
  IElementType NOT = new IElementTypeJASS_Token("not");
  IElementType NOT_EQUAL = new IElementTypeJASS_Token("!=");
  IElementType OR = new IElementTypeJASS_Token("or");
  IElementType PLUS = new IElementTypeJASS_Token("PLUS");
  IElementType RPAREN = new IElementTypeJASS_Token("RPAREN");
  IElementType SINGLE_LINE_COMMENT = new IElementTypeJASS_Token("SINGLE_LINE_COMMENT");
  IElementType SYNTAX = new IElementTypeJASS_Token("syntax");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == ARGUMENT_DELARATION) {
        return new JASSArgumentDelarationImpl(node);
      }
      else if (type == ARG_LIST) {
        return new JASSArgListImpl(node);
      }
      else if (type == ASSIGN_EXPR) {
        return new JASSAssignExprImpl(node);
      }
      else if (type == BETWEEN_EXPR) {
        return new JASSBetweenExprImpl(node);
      }
      else if (type == CALL_EXPR) {
        return new JASSCallExprImpl(node);
      }
      else if (type == CONDITIONAL_EXPR) {
        return new JASSConditionalExprImpl(node);
      }
      else if (type == DIV_EXPR) {
        return new JASSDivExprImpl(node);
      }
      else if (type == ELVIS_EXPR) {
        return new JASSElvisExprImpl(node);
      }
      else if (type == EXP_EXPR) {
        return new JASSExpExprImpl(node);
      }
      else if (type == FACTORIAL_EXPR) {
        return new JASSFactorialExprImpl(node);
      }
      else if (type == FUNCTION_NAME) {
        return new JASSFunctionNameImpl(node);
      }
      else if (type == GLOBALS_DECLARATION) {
        return new JASSGlobalsDeclarationImpl(node);
      }
      else if (type == IS_NOT_EXPR) {
        return new JASSIsNotExprImpl(node);
      }
      else if (type == LITERAL_EXPR) {
        return new JASSLiteralExprImpl(node);
      }
      else if (type == MINUS_EXPR) {
        return new JASSMinusExprImpl(node);
      }
      else if (type == MUL_EXPR) {
        return new JASSMulExprImpl(node);
      }
      else if (type == NATIVE_DECLARATION) {
        return new JASSNativeDeclarationImpl(node);
      }
      else if (type == PAREN_EXPR) {
        return new JASSParenExprImpl(node);
      }
      else if (type == PLUS_EXPR) {
        return new JASSPlusExprImpl(node);
      }
      else if (type == REF_EXPR) {
        return new JASSRefExprImpl(node);
      }
      else if (type == TYPE) {
        return new JASSTypeImpl(node);
      }
      else if (type == TYPE_DECLARATION) {
        return new JASSTypeDeclarationImpl(node);
      }
      else if (type == UNARY_MIN_EXPR) {
        return new JASSUnaryMinExprImpl(node);
      }
      else if (type == UNARY_NOT_EXPR) {
        return new JASSUnaryNotExprImpl(node);
      }
      else if (type == UNARY_PLUS_EXPR) {
        return new JASSUnaryPlusExprImpl(node);
      }
      else if (type == VARIABLE) {
        return new JASSVariableImpl(node);
      }
      else if (type == VARIABLE_DECLARATION) {
        return new JASSVariableDeclarationImpl(node);
      }
      else if (type == XOR_EXPR) {
        return new JASSXorExprImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
