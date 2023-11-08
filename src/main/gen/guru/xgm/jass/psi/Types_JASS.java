// This is a generated file. Not intended for manual editing.
package guru.xgm.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.IElementType_Element_JASS;
import guru.xgm.jass.psi.tree.IElementType_Token_JASS;
import guru.xgm.jass.psi.impl.*;

public interface Types_JASS {

  IElementType PROPERTY = new IElementType_Element_JASS("PROPERTY");

  IElementType COMMENT = new IElementType_Token_JASS("COMMENT");
  IElementType CRLF = new IElementType_Token_JASS("CRLF");
  IElementType KEY = new IElementType_Token_JASS("KEY");
  IElementType SEPARATOR = new IElementType_Token_JASS("SEPARATOR");
  IElementType VALUE = new IElementType_Token_JASS("VALUE");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == PROPERTY) {
        return new JASS_PropertyImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
