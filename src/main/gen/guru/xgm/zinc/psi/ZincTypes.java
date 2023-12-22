// This is a generated file. Not intended for manual editing.
package guru.xgm.zinc.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.zinc.psi.tree.ZincIElement;
import guru.xgm.zinc.psi.tree.ZincIToken;
import guru.xgm.zinc.psi.impl.*;

public interface ZincTypes {

  IElementType LIB_DECL = new ZincIElement("LIB_DECL");

  IElementType ID = new ZincIToken("ID");
  IElementType LIBRARY = new ZincIToken("library");
  IElementType SINGLE_LINE_COMMENT = new ZincIToken("SINGLE_LINE_COMMENT");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == LIB_DECL) {
        return new ZincLibDeclImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
