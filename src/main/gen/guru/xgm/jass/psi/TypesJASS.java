// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Element;
import guru.xgm.jass.psi.tree.IElementTypeJASS_Token;
import guru.xgm.jass.psi.impl.*;

public interface TypesJASS {

  IElementType ADDITION_EXPRESSION = new IElementTypeJASS_Element("ADDITION_EXPRESSION");
  IElementType ARGUMENT_DELARATION = new IElementTypeJASS_Element("ARGUMENT_DELARATION");
  IElementType EXPRESSION = new IElementTypeJASS_Element("EXPRESSION");
  IElementType FUNCTION_CALL = new IElementTypeJASS_Element("FUNCTION_CALL");
  IElementType FUNCTION_NAME = new IElementTypeJASS_Element("FUNCTION_NAME");
  IElementType GLOBALS_DECLARATION = new IElementTypeJASS_Element("GLOBALS_DECLARATION");
  IElementType MULTIPLICATION = new IElementTypeJASS_Element("MULTIPLICATION");
  IElementType NATIVE_DECLARATION = new IElementTypeJASS_Element("NATIVE_DECLARATION");
  IElementType PRIMARY = new IElementTypeJASS_Element("PRIMARY");
  IElementType PRIMARY_TERM_EXPRESSION = new IElementTypeJASS_Element("PRIMARY_TERM_EXPRESSION");
  IElementType TYPE = new IElementTypeJASS_Element("TYPE");
  IElementType TYPE_DECLARATION = new IElementTypeJASS_Element("TYPE_DECLARATION");
  IElementType VARIABLE = new IElementTypeJASS_Element("VARIABLE");
  IElementType VARIABLE_DECLARATION = new IElementTypeJASS_Element("VARIABLE_DECLARATION");

  IElementType AND = new IElementTypeJASS_Token("AND");
  IElementType ASSIGN = new IElementTypeJASS_Token("ASSIGN");
  IElementType COMMA = new IElementTypeJASS_Token("COMMA");
  IElementType DIV = new IElementTypeJASS_Token("DIV");
  IElementType IDENTIFIER = new IElementTypeJASS_Token("IDENTIFIER");
  IElementType INTEGER = new IElementTypeJASS_Token("INTEGER");
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
  IElementType MINUS = new IElementTypeJASS_Token("MINUS");
  IElementType MUL = new IElementTypeJASS_Token("MUL");
  IElementType NOT = new IElementTypeJASS_Token("not");
  IElementType OR = new IElementTypeJASS_Token("OR");
  IElementType PLUS = new IElementTypeJASS_Token("PLUS");
  IElementType RPAREN = new IElementTypeJASS_Token("RPAREN");
  IElementType SINGLE_LINE_COMMENT = new IElementTypeJASS_Token("SINGLE_LINE_COMMENT");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == ADDITION_EXPRESSION) {
        return new JASSAdditionExpressionImpl(node);
      }
      else if (type == ARGUMENT_DELARATION) {
        return new JASSArgumentDelarationImpl(node);
      }
      else if (type == EXPRESSION) {
        return new JASSExpressionImpl(node);
      }
      else if (type == FUNCTION_CALL) {
        return new JASSFunctionCallImpl(node);
      }
      else if (type == FUNCTION_NAME) {
        return new JASSFunctionNameImpl(node);
      }
      else if (type == GLOBALS_DECLARATION) {
        return new JASSGlobalsDeclarationImpl(node);
      }
      else if (type == MULTIPLICATION) {
        return new JASSMultiplicationImpl(node);
      }
      else if (type == NATIVE_DECLARATION) {
        return new JASSNativeDeclarationImpl(node);
      }
      else if (type == PRIMARY) {
        return new JASSPrimaryImpl(node);
      }
      else if (type == PRIMARY_TERM_EXPRESSION) {
        return new JASSPrimaryTermExpressionImpl(node);
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
