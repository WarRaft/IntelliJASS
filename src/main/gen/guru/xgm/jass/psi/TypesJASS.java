// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Element;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Token;
import guru.xgm.jass.psi.impl.*;

public interface TypesJASS {

  IElementType AND_EXPRESSION = new IElementTypeJASS_Element("AND_EXPRESSION");
  IElementType ARGUMENT = new IElementTypeJASS_Element("ARGUMENT");
  IElementType ARGUMENT_LIST = new IElementTypeJASS_Element("ARGUMENT_LIST");
  IElementType ASSIGN_EXPRESSION = new IElementTypeJASS_Element("ASSIGN_EXPRESSION");
  IElementType ASSIGN_STATEMENT = new IElementTypeJASS_Element("ASSIGN_STATEMENT");
  IElementType CALL_EXPRESSION = new IElementTypeJASS_Element("CALL_EXPRESSION");
  IElementType CALL_PARAMENTERS = new IElementTypeJASS_Element("CALL_PARAMENTERS");
  IElementType CONDITIONAL_EXPRESSION = new IElementTypeJASS_Element("CONDITIONAL_EXPRESSION");
  IElementType DIV_EXPRESSION = new IElementTypeJASS_Element("DIV_EXPRESSION");
  IElementType EXPRESSION = new IElementTypeJASS_Element("EXPRESSION");
  IElementType FUNCTION_DECLARATION = new IElementTypeJASS_Element("FUNCTION_DECLARATION");
  IElementType FUNCTION_HEAD = new IElementTypeJASS_Element("FUNCTION_HEAD");
  IElementType FUNCTION_NAME = new IElementTypeJASS_Element("FUNCTION_NAME");
  IElementType GLOBALS_DECLARATION = new IElementTypeJASS_Element("GLOBALS_DECLARATION");
  IElementType LITERAL_EXPRESSION = new IElementTypeJASS_Element("LITERAL_EXPRESSION");
  IElementType MINUS_EXPRESSION = new IElementTypeJASS_Element("MINUS_EXPRESSION");
  IElementType MINUS_UNARY_EXPRESSION = new IElementTypeJASS_Element("MINUS_UNARY_EXPRESSION");
  IElementType MUL_EXPRESSION = new IElementTypeJASS_Element("MUL_EXPRESSION");
  IElementType NATIVE_DECLARATION = new IElementTypeJASS_Element("NATIVE_DECLARATION");
  IElementType NOT_UNARY_EXPRESSION = new IElementTypeJASS_Element("NOT_UNARY_EXPRESSION");
  IElementType OR_EXPRESSION = new IElementTypeJASS_Element("OR_EXPRESSION");
  IElementType PAREN_EXPRESSION = new IElementTypeJASS_Element("PAREN_EXPRESSION");
  IElementType PLUS_EXPRESSION = new IElementTypeJASS_Element("PLUS_EXPRESSION");
  IElementType PLUS_UNARY_EXPRESSION = new IElementTypeJASS_Element("PLUS_UNARY_EXPRESSION");
  IElementType REF_EXPRESSION = new IElementTypeJASS_Element("REF_EXPRESSION");
  IElementType STATEMENT_LIST = new IElementTypeJASS_Element("STATEMENT_LIST");
  IElementType TYPE = new IElementTypeJASS_Element("TYPE");
  IElementType TYPE_DECLARATION = new IElementTypeJASS_Element("TYPE_DECLARATION");
  IElementType VARIABLE = new IElementTypeJASS_Element("VARIABLE");
  IElementType VARIABLE_DECLARATION = new IElementTypeJASS_Element("VARIABLE_DECLARATION");

  IElementType AND = new IElementTypeJASS_Token("AND");
  IElementType ARRAY = new IElementTypeJASS_Token("ARRAY");
  IElementType ASSIGN = new IElementTypeJASS_Token("ASSIGN");
  IElementType COMMA = new IElementTypeJASS_Token("COMMA");
  IElementType DIV = new IElementTypeJASS_Token("DIV");
  IElementType DOT = new IElementTypeJASS_Token("DOT");
  IElementType EQ_EQ = new IElementTypeJASS_Token("EQ_EQ");
  IElementType FALSE = new IElementTypeJASS_Token("FALSE");
  IElementType HEX = new IElementTypeJASS_Token("HEX");
  IElementType IDENTIFIER = new IElementTypeJASS_Token("IDENTIFIER");
  IElementType INTEGER = new IElementTypeJASS_Token("INTEGER");
  IElementType KEYWORD_CONSTANT = new IElementTypeJASS_Token("KEYWORD_CONSTANT");
  IElementType KEYWORD_ENDFUNCTION = new IElementTypeJASS_Token("KEYWORD_ENDFUNCTION");
  IElementType KEYWORD_ENDGLOBALS = new IElementTypeJASS_Token("KEYWORD_ENDGLOBALS");
  IElementType KEYWORD_EXTENDS = new IElementTypeJASS_Token("KEYWORD_EXTENDS");
  IElementType KEYWORD_FUNCTION = new IElementTypeJASS_Token("KEYWORD_FUNCTION");
  IElementType KEYWORD_GLOBALS = new IElementTypeJASS_Token("KEYWORD_GLOBALS");
  IElementType KEYWORD_NATIVE = new IElementTypeJASS_Token("KEYWORD_NATIVE");
  IElementType KEYWORD_RETURNS = new IElementTypeJASS_Token("KEYWORD_RETURNS");
  IElementType KEYWORD_TAKES = new IElementTypeJASS_Token("KEYWORD_TAKES");
  IElementType KEYWORD_TYPE = new IElementTypeJASS_Token("KEYWORD_TYPE");
  IElementType LPAREN = new IElementTypeJASS_Token("LPAREN");
  IElementType LT = new IElementTypeJASS_Token("LT");
  IElementType LT_EQ = new IElementTypeJASS_Token("LT_EQ");
  IElementType MINUS = new IElementTypeJASS_Token("MINUS");
  IElementType MUL = new IElementTypeJASS_Token("MUL");
  IElementType NEQ = new IElementTypeJASS_Token("NEQ");
  IElementType NOT = new IElementTypeJASS_Token("NOT");
  IElementType NOTHING = new IElementTypeJASS_Token("NOTHING");
  IElementType OR = new IElementTypeJASS_Token("OR");
  IElementType PLUS = new IElementTypeJASS_Token("PLUS");
  IElementType RAWCODE = new IElementTypeJASS_Token("RAWCODE");
  IElementType REAL = new IElementTypeJASS_Token("REAL");
  IElementType RPAREN = new IElementTypeJASS_Token("RPAREN");
  IElementType RT = new IElementTypeJASS_Token("RT");
  IElementType RT_EQ = new IElementTypeJASS_Token("RT_EQ");
  IElementType SET = new IElementTypeJASS_Token("SET");
  IElementType SINGLE_LINE_COMMENT = new IElementTypeJASS_Token("SINGLE_LINE_COMMENT");
  IElementType STRING = new IElementTypeJASS_Token("STRING");
  IElementType TRUE = new IElementTypeJASS_Token("TRUE");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == AND_EXPRESSION) {
        return new JASSAndExpressionImpl(node);
      }
      else if (type == ARGUMENT) {
        return new JASSArgumentImpl(node);
      }
      else if (type == ARGUMENT_LIST) {
        return new JASSArgumentListImpl(node);
      }
      else if (type == ASSIGN_EXPRESSION) {
        return new JASSAssignExpressionImpl(node);
      }
      else if (type == ASSIGN_STATEMENT) {
        return new JASSAssignStatementImpl(node);
      }
      else if (type == CALL_EXPRESSION) {
        return new JASSCallExpressionImpl(node);
      }
      else if (type == CALL_PARAMENTERS) {
        return new JASSCallParamentersImpl(node);
      }
      else if (type == CONDITIONAL_EXPRESSION) {
        return new JASSConditionalExpressionImpl(node);
      }
      else if (type == DIV_EXPRESSION) {
        return new JASSDivExpressionImpl(node);
      }
      else if (type == FUNCTION_DECLARATION) {
        return new JASSFunctionDeclarationImpl(node);
      }
      else if (type == FUNCTION_HEAD) {
        return new JASSFunctionHeadImpl(node);
      }
      else if (type == FUNCTION_NAME) {
        return new JASSFunctionNameImpl(node);
      }
      else if (type == GLOBALS_DECLARATION) {
        return new JASSGlobalsDeclarationImpl(node);
      }
      else if (type == LITERAL_EXPRESSION) {
        return new JASSLiteralExpressionImpl(node);
      }
      else if (type == MINUS_EXPRESSION) {
        return new JASSMinusExpressionImpl(node);
      }
      else if (type == MINUS_UNARY_EXPRESSION) {
        return new JASSMinusUnaryExpressionImpl(node);
      }
      else if (type == MUL_EXPRESSION) {
        return new JASSMulExpressionImpl(node);
      }
      else if (type == NATIVE_DECLARATION) {
        return new JASSNativeDeclarationImpl(node);
      }
      else if (type == NOT_UNARY_EXPRESSION) {
        return new JASSNotUnaryExpressionImpl(node);
      }
      else if (type == OR_EXPRESSION) {
        return new JASSOrExpressionImpl(node);
      }
      else if (type == PAREN_EXPRESSION) {
        return new JASSParenExpressionImpl(node);
      }
      else if (type == PLUS_EXPRESSION) {
        return new JASSPlusExpressionImpl(node);
      }
      else if (type == PLUS_UNARY_EXPRESSION) {
        return new JASSPlusUnaryExpressionImpl(node);
      }
      else if (type == REF_EXPRESSION) {
        return new JASSRefExpressionImpl(node);
      }
      else if (type == STATEMENT_LIST) {
        return new JASSStatementListImpl(node);
      }
      else if (type == TYPE) {
        return new JASSTypeImpl(node);
      }
      else if (type == TYPE_DECLARATION) {
        return new JASSTypeDeclarationImpl(node);
      }
      else if (type == VARIABLE) {
        return new JASSVariableImpl(node);
      }
      else if (type == VARIABLE_DECLARATION) {
        return new JASSVariableDeclarationImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
