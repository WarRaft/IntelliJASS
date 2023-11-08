// This is a generated file. Not intended for manual editing.
package org.intellij.sdk.language.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import guru.xgm.jass.psi.tree.IElementType_JASS;
import org.intellij.sdk.language.jass.psi.impl.*;

public interface JassTypes {

  IElementType PROPERTY = new JassElementType("PROPERTY");

  IElementType COMMENT = new IElementType_JASS("COMMENT");
  IElementType CRLF = new IElementType_JASS("CRLF");
  IElementType KEY = new IElementType_JASS("KEY");
  IElementType SEPARATOR = new IElementType_JASS("SEPARATOR");
  IElementType VALUE = new IElementType_JASS("VALUE");

  class Factory {
    public static PsiElement createElement(ASTNode node) {
      IElementType type = node.getElementType();
      if (type == PROPERTY) {
        return new JassPropertyImpl(node);
      }
      throw new AssertionError("Unknown element type: " + type);
    }
  }
}
