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
  IElementType FUNCTION_DECLARATION = new IElementTypeJASS_Element("FUNCTION_DECLARATION");
  IElementType NATIVE_DECLARATION = new IElementTypeJASS_Element("NATIVE_DECLARATION");
  IElementType TYPE = new IElementTypeJASS_Element("TYPE");
  IElementType TYPE_DECLARATION = new IElementTypeJASS_Element("TYPE_DECLARATION");
  IElementType VARIABLE = new IElementTypeJASS_Element("VARIABLE");

  IElementType COMMA = new IElementTypeJASS_Token("COMMA");
  IElementType IDENTIFIER = new IElementTypeJASS_Token("IDENTIFIER");
  IElementType KEYWORD_CONSTANT = new IElementTypeJASS_Token("KEYWORD_CONSTANT");
  IElementType KEYWORD_EXTENDS = new IElementTypeJASS_Token("KEYWORD_EXTENDS");
  IElementType KEYWORD_NATIVE = new IElementTypeJASS_Token("KEYWORD_NATIVE");
  IElementType KEYWORD_NOTHING = new IElementTypeJASS_Token("KEYWORD_NOTHING");
  IElementType KEYWORD_RETURNS = new IElementTypeJASS_Token("KEYWORD_RETURNS");
  IElementType KEYWORD_TAKES = new IElementTypeJASS_Token("KEYWORD_TAKES");
  IElementType KEYWORD_TYPE = new IElementTypeJASS_Token("KEYWORD_TYPE");
  IElementType SINGLE_LINE_COMMENT = new IElementTypeJASS_Token("SINGLE_LINE_COMMENT");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == ARGUMENT_DELARATION) {
        return new JASSArgumentDelarationImpl(node);
      }
      else if (type == FUNCTION_DECLARATION) {
        return new JASSFunctionDeclarationImpl(node);
      }
      else if (type == NATIVE_DECLARATION) {
        return new JASSNativeDeclarationImpl(node);
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
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
