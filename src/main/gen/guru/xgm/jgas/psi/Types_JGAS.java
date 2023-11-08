// This is a generated file. Not intended for manual editing.
package guru.xgm.jgas.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jgas.psi.tree.IElementType_Element_JGAS;
import guru.xgm.jgas.psi.tree.IElementType_Token_JGAS;
import guru.xgm.jgas.psi.impl.*;

public interface Types_JGAS {

  IElementType PROPERTY = new IElementType_Element_JGAS("PROPERTY");

  IElementType COMMENT = new IElementType_Token_JGAS("COMMENT");
  IElementType CRLF = new IElementType_Token_JGAS("CRLF");
  IElementType KEY = new IElementType_Token_JGAS("KEY");
  IElementType SEPARATOR = new IElementType_Token_JGAS("SEPARATOR");
  IElementType VALUE = new IElementType_Token_JGAS("VALUE");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == PROPERTY) {
        return new JGAS_PropertyImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
