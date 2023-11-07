// This is a generated file. Not intended for manual editing.
package org.intellij.sdk.language.jass.psi;

import com.intellij.psi.tree.IElementType;
import com.intellij.psi.PsiElement;
import com.intellij.lang.ASTNode;
import org.intellij.sdk.language.jass.psi.impl.*;

public interface JassTypes {

  IElementType PROPERTY = new JassElementType("PROPERTY");

  IElementType COMMENT = new JassTokenType("COMMENT");
  IElementType CRLF = new JassTokenType("CRLF");
  IElementType KEY = new JassTokenType("KEY");
  IElementType SEPARATOR = new JassTokenType("SEPARATOR");
  IElementType VALUE = new JassTokenType("VALUE");

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
